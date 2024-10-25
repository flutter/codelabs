# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.jdk17
    pkgs.unzip
    pkgs.flutter
  ];
  
  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "Dart-Code.dart-code"
      "Dart-Code.flutter"
    ];
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        updateStable = "flutter channel stable && flutter upgrade && flutter pub get";
      };
      # Runs when the workspace is (re)started
      onStart = {
        updateStable = "flutter channel stable && flutter upgrade && flutter pub get";
      };
    };
  };
}
