# modules/home-manager/hypr/hyprlock.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:

{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        hide_cursor = true;
      };

      background = [
        {
          monitor = "";
          path = "~/.dotfiles/assets/walpapers/wallpaper.jpg";
          blur_passes = 0;
          color = "rgb(1e1e2e)";
        }
      ];

      label = [
        # Layout label
        {
          monitor = "";
          text = "Layout: $LAYOUT";
          color = "rgb(cdd6f4)";
          font_size = 25;
          font_family = "JetBrainsMono Nerd Font";
          position = "30, -30";
          halign = "left";
          valign = "top";
        }
        # Time label
        {
          monitor = "";
          text = "$TIME";
          color = "rgb(cdd6f4)";
          font_size = 90;
          font_family = "JetBrainsMono Nerd Font";
          position = "-30, 0";
          halign = "right";
          valign = "top";
        }
        # Date label
        {
          monitor = "";
          text = "cmd[update:43200000] date +\"%A, %d %B %Y\"";
          color = "rgb(cdd6f4)";
          font_size = 25;
          font_family = "JetBrainsMono Nerd Font";
          position = "-30, -150";
          halign = "right";
          valign = "top";
        }
      ];

      input-field = [
        {
          monitor = "";
          size = "300, 60";
          outline_thickness = 4;
          dots_size = 0.2;
          dots_spacing = 0.2;
          dots_center = true;
          outer_color = "rgb(cba6f7)";
          inner_color = "rgb(313244)";
          font_color = "rgb(cdd6f4)";
          fade_on_empty = false;
          placeholder_text = "<span foreground=\"##cdd6f4\"><i>󰌾 Logged in as </i><span foreground=\"##cba6f7\">$USER</span></span>";
          hide_input = false;
          check_color = "rgb(cba6f7)";
          fail_color = "rgb(f38ba8)";
          fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
          capslock_color = "rgb(f9e2af)";
          position = "0, -47";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
