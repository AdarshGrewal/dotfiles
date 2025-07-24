# modules/home-manager/hypr/wofi.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:

{
  home.packages = with pkgs; [
    nerd-fonts.inconsolata
  ];
  programs.wofi = {
    enable = true;
    settings = {
      show = "drun";
      width = "750";
      height = "400";
      always_parse_args = true;
      show_all = false;
      term = "kitty";
      hide_scroll = true;
      print_command = true;
      insensitive = true;
      prompt = "";
      columns = "2";
    };
    style = builtins.readFile ./wofi.css;
  };
}
