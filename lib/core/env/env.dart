part 'env_vars.dart';

class Env implements EnvVars{

  Env._();
  static final Env _env = Env._();
  factory Env() => _env;
  factory Env.init(EnvMode mode) => _env.._vars = mode.vars;

  EnvVars _vars = EnvMode.dev.vars;

  @override
  String get gqlBaseUrl => _vars.gqlBaseUrl;

  @override
  String get socketBaseUrl => _vars.socketBaseUrl;

  @override
  EnvMode get mode => _vars.mode;
}

