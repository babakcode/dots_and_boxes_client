class AppGraphQLException implements Exception{
  final String message;

  const AppGraphQLException(this.message);
}

class AppGraphQLEmptyException implements Exception{}

