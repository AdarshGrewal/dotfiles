{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:

{
  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
      ];
      theme = "robbyrussell";
    };
    history.size = 10000;
  };
}
