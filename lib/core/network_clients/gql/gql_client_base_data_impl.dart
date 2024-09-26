import 'package:dots_boxes_game/core/env/env.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlClientBaseDataImpl {
  GraphQlClientBaseDataImpl();

  late GraphQLClient _graphQLClient;

  GraphQLClient get client => _graphQLClient;

  String _headers = '';

  void initClient({String? key, String? value}) {
    _headers = 'GraphQlClientBaseDataImpl(key: $key, value: $value)';

    // Create a custom AuthLink
    AuthLink authLink = AuthLink(
      getToken: () => value == null ? null : 'Bearer $value',
      headerKey: key ?? 'Authorization', // Set your custom header name
    );

    _graphQLClient = GraphQLClient(
      link: authLink.concat(
        HttpLink(
          Env().gqlBaseUrl,
        ),
      ),
      cache: GraphQLCache(),
    );
  }


  @override
  String toString() {
    return _headers;
  }
}
