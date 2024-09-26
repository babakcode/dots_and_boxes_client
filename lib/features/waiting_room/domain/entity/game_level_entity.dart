class GameLevelEntity {
  final String level;
  final int board;
  final int fee;
  final int winnerCoin;
  final int loserCoin;

  const GameLevelEntity({
    required this.level,
    required this.board,
    required this.fee,
    required this.winnerCoin,
    required this.loserCoin,
  });

  static List<GameLevelEntity> levels = [
    const GameLevelEntity(
      level: "friend",
      board: 6,
      fee: 5,
      winnerCoin: 8,
      loserCoin: 1,
    ),
    const GameLevelEntity(
      level: "free",
      board: 6,
      fee: 0,
      winnerCoin: 1,
      loserCoin: 0,
    ),
    const GameLevelEntity(
      level: "d1",
      board: 6,
      fee: 250,
      winnerCoin: 350,
      loserCoin: 100,
    ),
    const GameLevelEntity(
      level: "d2",
      board: 7,
      fee: 1250,
      winnerCoin: 1625,
      loserCoin: 675,
    ),
    const GameLevelEntity(
      level: "d3",
      board: 8,
      fee: 7500,
      winnerCoin: 9450,
      loserCoin: 4500,
    ),
    const GameLevelEntity(
      level: "d4",
      board: 9,
      fee: 50000,
      winnerCoin: 62000,
      loserCoin: 33000,
    ),
    const GameLevelEntity(
      level: "d5",
      board: 10,
      fee: 375000,
      winnerCoin: 450000,
      loserCoin: 277500,
    ),
    const GameLevelEntity(
      level: "d6",
      board: 10,
      fee: 750000,
      winnerCoin: 900000,
      loserCoin: 555000,
    ),
  ];
}
