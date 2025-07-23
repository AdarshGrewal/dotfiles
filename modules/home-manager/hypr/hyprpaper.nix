{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:

{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "~/.dotfiles/assets/walpapers/wallpaper.jpg"
      ];
      wallpaper = [
        ",~/.dotfiles/assets/walpapers/wallpaper.jpg"
      ];
    };
  };
}

