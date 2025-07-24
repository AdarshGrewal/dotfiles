# modules/home-manager/hypr/waybar.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:

{
  home.packages = with pkgs; [
    pavucontrol
    nerd-fonts.jetbrains-mono
    pamixer
  ];

  programs.waybar = {
    enable = true;
    systemd.enable = true;
    style = builtins.readFile ./waybar.css; # or an absolute path to your CSS file
    settings = [
      {
        layer = "top";
        position = "top";
        spacing = 0;
        height = 34;

        modules-left = [
          "hyprland/workspaces"
        ];

        modules-center = [
          "clock"
        ];

        modules-right = [
          "tray"
          "memory"
          "bluetooth"
          "network"
          "wireplumber"
          "custom/notifications"
        ];

        "wlr/taskbar" = {
          format = "{icon}";
          on-click = "activate";
          on-click-right = "fullscreen";
          icon-theme = "WhiteSur";
          icon-size = 25;
          tooltip-format = "{title}";
        };

        "hyprland/workspaces" = {
          on-click = "activate";
          format = "{icon}";
          format-icons = {
            default = "";
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
            active = "󱓻";
            urgent = "󱓻";
          };
          persistent_workspaces = {
            "1" = [ ];
            "2" = [ ];
            "3" = [ ];
            "4" = [ ];
            "5" = [ ];
          };
        };

        memory = {
          interval = 5;
          format = "󰍛 {}%";
          max-length = 10;
        };

        tray = {
          spacing = 10;
        };

        clock = {
          tooltip-format = "{calendar}";
          format-alt = "  {:%a, %d %b %Y}";
          format = "  {:%I:%M %p}";
        };

        bluetooth = {
          format = "{icon}";
          format-on = "󰂯"; # Show Bluetooth icon when adapter is on
          format-off = "󰂲"; # Show 'off' icon when adapter is off
          format-connected = "󰂱 {device_alias}";
          tooltip-format = "{controller_alias}\n{num_connections} connected";
          tooltip-format-connected = "{controller_alias}\nConnected: {device_enumerate}";
          tooltip-format-enumerate-connected = "{device_alias}";
          on-click = "~/.dotfiles/scripts/bluetooth-menu --custom wofi '--columns=1 --dmenu --insensitive --prompt' '-d -p' '-d --password --prompt' &";
          interval = 10;
          format-icons = {
            on = "󰂯";
            off = "󰂲";
            connected = "󰂱";
          };
        };

        network = {
          format-wifi = "{icon}";
          format-icons = [
            "󰤯"
            "󰤟"
            "󰤢"
            "󰤥"
            "󰤨"
          ];
          format-ethernet = "󰀂";
          format-alt = "󱛇";
          format-disconnected = "󰖪";
          tooltip-format-wifi = "{icon} {essid}\n⇣{bandwidthDownBytes}  ⇡{bandwidthUpBytes}";
          tooltip-format-ethernet = "󰀂  {ifname}\n⇣{bandwidthDownBytes}  ⇡{bandwidthUpBytes}";
          tooltip-format-disconnected = "Disconnected";
          on-click = "~/.dotfiles/scripts/wifimenu --custom wofi '--columns=1 --dmenu --insensitive --prompt' '-d -p' '-d --password --prompt' &";
          interval = 5;
          nospacing = 1;
        };

        wireplumber = {
          format = "{icon}";
          format-bluetooth = "󰂰";
          nospacing = 1;
          tooltip-format = "Volume : {volume}%";
          format-muted = "󰝟";
          format-icons = {
            headphone = "";
            default = [
              "󰖀"
              "󰕾"
              ""
            ];
          };
          on-click = "pamixer -t";
          scroll-step = 1;
        };

        "custom/notifications" = {
          exec-if = "which swaync-client";
          exec = "swaync-client -swb";
          format = "";
          tooltip = false;
          on-click = "sleep 0.1 && swaync-client -t -sw";
          escape = true;
        };
      }
    ];
  };

}
