import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(
    varName: 'FUNDA_API_KEY',
    obfuscate: true,
  )
  static String fundaApiKey = _Env.fundaApiKey;
}
