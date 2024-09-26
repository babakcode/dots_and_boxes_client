abstract interface class GraphQlClientRepo{
  Future<Map<String, dynamic>> query(String data, {Map<String, dynamic>? vars});
  Future<Map<String, dynamic>> mutate(String data, {Map<String, dynamic>? vars});
}
