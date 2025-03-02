class EnvConfig {
  static const brokerName = "GPT-Trade (R)";
  static const siteName = String.fromEnvironment("SITE_NAME");
  static const siteMail = String.fromEnvironment("SITE_MAIL");
  static const siteUrl = String.fromEnvironment("SITE_URL");
  static const wsUrl = String.fromEnvironment("WS_URL");
  static const publicKey = String.fromEnvironment("PUBLIC_KEY");
}
