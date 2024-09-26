import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dots_boxes_game/core/entities/user_player_entity.dart';
import 'package:dots_boxes_game/core/env/env.dart';
import 'package:dots_boxes_game/features/game/domain/entities/line/line.dart';
import 'package:dots_boxes_game/features/game/domain/repo/room_game_repo.dart';
import 'package:dots_boxes_game/features/splash/domain/repo/splash_socket_repository.dart';
import 'package:dots_boxes_game/features/waiting_room/domain/repo/waiting_room_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_event.dart';

part 'socket_state.dart';

part 'socket_bloc.freezed.dart';

class SocketBloc extends Bloc<SocketEvent, SocketState> {
  final SplashSocketRepo _splashSocketRepo;
  final WaitingRoomRepository _waitingRoomRepository;
  final RoomGameRepo _roomGameRepo;

  late Emitter<SocketState> _emit;

  SocketBloc({
    required SplashSocketRepo splashSocketRepo,
    required WaitingRoomRepository waitingRoomRepository,
    required RoomGameRepo roomGameRepo,
  })  : _splashSocketRepo = splashSocketRepo,
        _waitingRoomRepository = waitingRoomRepository,
        _roomGameRepo = roomGameRepo,
        super(const SocketState.connectedToSocket(connected: false)) {
    on<SocketEvent>((event, emit) async {
      _emit = emit;
      await event.map(
        initConnect: onInitConnect,
        getPlayerInfo: onGetPlayerInfo,
        joinWaitRoom: onJoinWaitRoom,
        leaveWaitRoom: onLeaveWaitRoom,
        joinRoom: onJoinRoom,
        playerClickLine: onPlayerClickLine,
      );
    });
  }

  Future<void>? onInitConnect(_) async {
    // update ui and change the status of connection
    await _splashSocketRepo.connect(
      () {
        _emit(const SocketState.connectedToSocket(
          connected: true,
        ));
      },

      // unable to connect socket
      onError: (error) {
        print(error);
        _emit(SocketState.connectedToSocket(
          connected: false,
          error: error,
        ));
      },
    ).catchError((e) {
      print('error $e');
    });
    if (Env().mode == EnvMode.stage) {
      _emit(const SocketState.connectedToSocket(
        connected: true,
      ));
    }
  }

  Future<void>? onGetPlayerInfo(_) async {
    /// get my player info by emit ack
    /// {user} is callback function of ack result
    await _splashSocketRepo.getPlayerInfo(
      (user) {
        try {
          _emit(SocketState.playerInfo(UserPlayer.fromJson(user)));
        } catch (e) {
          print('_splashSocketRepo.getPlayerInfo, error: $e');
          _emit(const SocketState.connectedToSocket(
            connected: false,
            error: 'Unexpected error',
          ));
        }
      },
      onError: (error) {
        _emit(SocketState.connectedToSocket(
          connected: false,
          error: error,
        ));
      },
    );
  }

  Future<void>? onJoinWaitRoom(_SocketEventJoinWaitRoom value) async {
    await _waitingRoomRepository.joinWaitRoom(
      value.level,
      (value) {
        if(value != null){
          _emit(SocketState.waitingRoom(roomId: value));
        }
      },
      onError: (value) {
        _emit(SocketState.waitingRoom(error: value));
      },

      /// [onResponse] is call 🔙 function (ack)
      /// this code same as the second arg of [joinWaitRoom]
      /// You can uncomment following line and use it as state changes
      //   onResponse: (value) {
      //   emit(SocketState.waitingRoom(error: value));
      // },
    );
  }

  Future<void>? onLeaveWaitRoom(_SocketEventLeaveWaitRoom value) async {
    _waitingRoomRepository.leaveWaitingRoom(value.level);
  }

  Future<void>? onJoinRoom(_SocketEventJoinRoom value) async {
    _roomGameRepo.joinRoom(value.roomId);

    await _emit.forEach(
      _roomGameRepo.onRoomGameEvents(
        (value) {
          print(value);
        },
      ),
      onData: (value) {
        try {
          switch (value['type']) {
            case 'startGame':
              {
                return SocketState.startGame(
                    players: (value['players'] as List)
                        .cast<Map<String, dynamic>>()
                        .map((e) => UserPlayer.fromJson(e))
                        .toList(),
                    starter: value['data']['starter']);
              }
            case 'playerClickLine':
              {
                final points = value['data'];
                Point<int> p1 =
                        Point<int>(points['p1']['x'], points['p1']['y']),
                    p2 = Point<int>(points['p2']['x'], points['p2']['y']);

                return SocketState.playerClickLine(
                  line: LineEntity(p1: p1, p2: p2),
                  nextUserId: value['nextUser'],
                );
              }
            case 'gameOver':
              {
                return SocketState.gameOver(
                  winnerId: value['data']['winnerId'],
                );
              }
          }
        } catch (e) {
          print(e);
        }

        return SocketState.unknown(data: value);
      },
    );

    // await _roomGameRepo.onRoomGameEvents(
    //     (value) {
    //       try {
    //         switch (value['type']) {
    //           case 'startGame':
    //             {
    //               _emit(SocketState.startGame(
    //                   players: (value['players'] as List)
    //                       .cast<Map<String, dynamic>>()
    //                       .map((e) => UserPlayer.fromJson(e))
    //                       .toList(),
    //                   starter: value['data']['starter']));
    //               break;
    //             }
    //           case 'playerClickLine':
    //             {
    //               final points = value['data'];
    //               Point<int> p1 = Point<int>(
    //                       points['p1']['x'], points['p1']['y']),
    //                   p2 = Point<int>(
    //                       points['p2']['x'], points['p2']['y']);
    //
    //               _emit(
    //                 SocketState.playerClickLine(
    //                   line: LineEntity(p1: p1, p2: p2),
    //                   nextUserId: value['nextUser'],
    //                 ),
    //               );
    //               break;
    //             }
    //           case 'gameOver':
    //             {
    //               _emit(SocketState.gameOver(
    //                 winnerId: value['winnerId']['winnerId'],
    //               ));
    //               break;
    //             }
    //         }
    //       } catch (e) {
    //         print(e);
    //       }
    //     },
    //   );
  }

  Future<void>? onPlayerClickLine(_SocketEventPlayerClickLine state) async {
    await _emit.forEach(
      _roomGameRepo.playerClickLine(
        p1: state.p1,
        p2: state.p2,
        room: state.room,
        ack: (value) {
          print(value);
        },
      ),
      onData: (value) {
        if (value['res'] == true) {
          return SocketState.playerClickLine(
            line: LineEntity(p1: state.p1, p2: state.p2),
            nextUserId: value['nextUser'],
          );
        }

        return SocketState.unknown(data: value);
      },
    );

    // _roomGameRepo.playerClickLine(
    //     p1: state.p1,
    //     p2: state.p2,
    //     room: state.room,
    //     ack: (value) {
    //       try {
    //         if (value['res'] == true) {
    //           _emit(
    //             SocketState.playerClickLine(
    //               line: LineEntity(p1: state.p1, p2: state.p2),
    //               nextUserId: value['nextUser'],
    //             ),
    //           );
    //         }
    //       } catch (e) {
    //         print(e);
    //       }
    //     },
    //     onError: (data) {
    //       print(e);
    //     }
    // );
  }
}
