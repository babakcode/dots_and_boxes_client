part of 'env.dart';

sealed class EnvVars{
  String get gqlBaseUrl;
  String get socketBaseUrl;
  EnvMode get mode;
}

enum EnvMode{
  dev(_EnvVarsDev()),
  prod(_EnvVarsProd()),
  stage(_EnvVarsStage());
  final EnvVars vars;

  const EnvMode(this.vars);
}

class _EnvVarsDev implements EnvVars{
  const _EnvVarsDev();
  @override
  String get gqlBaseUrl => 'http://localhost:2001/graphql';

  @override
  String get socketBaseUrl => 'http://localhost:2002/dots-boxes';

  @override
  EnvMode get mode => EnvMode.dev;
}

class _EnvVarsProd implements EnvVars{
  const _EnvVarsProd();

  @override
  String get gqlBaseUrl => 'https://win-wealth.babakcode.com/graphql';

  @override
  String get socketBaseUrl => 'https://win-wealth-socket.babakcode.com/dots-boxes';

  @override
  EnvMode get mode => EnvMode.prod;
}
class _EnvVarsStage implements EnvVars{
  const _EnvVarsStage();

  @override
  String get gqlBaseUrl => 'https://win-wealth.babakcode.com/graphql';

  @override
  String get socketBaseUrl => 'https://win-wealth-socket.babakcode.com/dots-boxes';

  @override
  EnvMode get mode => EnvMode.stage;
}