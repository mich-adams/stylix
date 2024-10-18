{ config, lib, ... }:

{
  options.stylix.targets.mpv.enable =
    config.lib.stylix.mkEnableTarget "mpv" true;
  config = lib.mkIf (config.stylix.enable && config.stylix.targets.mpv.enable) {
    programs.mpv.scriptOpts.uosc.color = "foreground=${config.lib.stylix.colors.base05},foreground_text=${config.lib.stylix.colors.base00},background=${config.lib.stylix.colors.base00},background_text=${config.lib.stylix.colors.base05},curtain=${config.lib.stylix.colors.base01},success=${config.lib.stylix.colors.base0B},error=${config.lib.stylix.colors.base08}";
  };
}

