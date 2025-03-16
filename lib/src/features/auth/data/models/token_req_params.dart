import 'package:post_pilot/src/core/network/app_client_credentials.dart';

class TokenReqParams {
  final String grantType;
  final String clientId;
  final String clientSecret;
  final String scope;

  TokenReqParams({
    this.grantType = AppClientCredentials.grantType,
    this.clientId = AppClientCredentials.clientId,
    this.clientSecret = AppClientCredentials.clientSecret,
    this.scope = AppClientCredentials.scope,
  });

  Map<String, dynamic> toMap() {
    return {
      'grant_type': grantType,
      'client_id': clientId,
      'client_secret': clientSecret,
      'scope': scope,
    };
  }
}
