{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:

{
  services.swaync = {
    enable = true;
    style = builtins.readFile ./swaync.css;  # or an absolute path to your CSS file
  };
}
