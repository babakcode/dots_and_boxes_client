import 'package:dots_boxes_game/core/exceptions/app_gql_exception.dart';
import 'package:dots_boxes_game/core/network_clients/gql/gql_client_base_data_impl.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../interfaces/gql.dart';

class GraphQlClientImpl implements GraphQlClientRepo {

  final GraphQlClientBaseDataImpl _clientBaseDataImpl;

  GraphQlClientImpl(GraphQlClientBaseDataImpl clientBaseDataImpl) :
        _clientBaseDataImpl = clientBaseDataImpl;

  @override
  Future<Map<String, dynamic>> query(String data,
          {Map<String, dynamic>? vars}) {
    return
      _clientBaseDataImpl.client
          .query(
        QueryOptions(
          document: gql(data),
          variables: vars ?? {},
        ),
      )
          .then((result) {
        if (result.hasException) {
          print('[GraphQl]: ${result.exception?.graphqlErrors.firstOrNull?.message}');
          throw AppGraphQLException(
            result.exception?.graphqlErrors.firstOrNull?.message ??
                'UNEXPECTED',
          );
        }

        if (result.data == null) {
          throw AppGraphQLEmptyException();
        }
        return result.data!;
      });
  }

  @override
  Future<Map<String, dynamic>> mutate(String data,
          {Map<String, dynamic>? vars}) =>
      _clientBaseDataImpl.client
          .mutate(
        MutationOptions(
          document: gql(data),
          variables: vars ?? {},
        ),
      )
          .then((result) {
        if (result.hasException) {
          throw AppGraphQLException(
            result.exception?.graphqlErrors.firstOrNull?.message ??
                'UNEXPECTED',
          );
        }

        if (result.data == null) {
          throw AppGraphQLEmptyException();
        }
        return result.data!;
      });
}
