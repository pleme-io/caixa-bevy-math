# nix/modules/darwin.nix — auto-generated from bevy_math.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_math; in {
  options.services.bevy_math = {
    enable = lib.mkEnableOption "bevy_math";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_math or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
