{
  inputs,
  username,
  ...
}: {
  imports = [
    inputs.zen-browser.homeModules.default
  ];
  programs.zen-browser = {
    enable = true;
    suppressXdgMigrationWarning = true;
    profiles."${username}".settings = {
      "zen.view.compact.enable-at-startup" = true;
      "zen.view.experimental-no-window-controls" = true;
      "zen.theme.content-element-separation" = 0;
    };
    policies = {
      DisableAppUpdate = true;
      DisableTelemetry = true;
      DisablePocket = true;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      HttpsOnlyMode = "force_enabled";
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };
      DNSOverHTTPS = {
        Enabled = true;
        ProviderURL = "https://cloudflare-dns.com/dns-query";
        Locked = true;
      };
    };
  };
}
