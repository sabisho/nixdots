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
    profiles."${username}".settings = {
      "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
      "widget.use-xdg-desktop-portal.file-picker" = 0;
      "zen.theme.content-element-separation" = 0;
      "zen.view.compact.enable-at-startup" = true;
      "zen.view.experimental-no-window-controls" = true;
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
