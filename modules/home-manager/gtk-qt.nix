{
  lib,
  pkgs,
  ...
}:
let
  catppuccinAccent = "flamingo";
  catppuccinFlavor = "mocha";

  catppuccinKvantum = pkgs.catppuccin-kvantum.override {
    accent = catppuccinAccent;
    variant = catppuccinFlavor;
  };

  qtThemeName = "catppuccin-${catppuccinFlavor}-${catppuccinAccent}";
in
{
  home.packages = with pkgs; [
    catppuccinKvantum
    papirus-folders
    kdePackages.qtsvg
  ];

  # GTK Setup
  gtk = {
    enable = true;

    theme = {
      name = "catppuccin-${catppuccinFlavor}-${catppuccinAccent}-standard";
      package = pkgs.catppuccin-gtk.override {
        accents = [ catppuccinAccent ];
        size = "standard";
        variant = catppuccinFlavor;
      };
    };

    iconTheme = {
      name = "Papirus";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = catppuccinFlavor;
        accent = catppuccinAccent;
      };
    };

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
  };

  # Qt setup
  qt = {
    enable = true;
    platformTheme.name = "kvantum";
    style.name = "kvantum";
  };

  xdg.configFile = {
    "Kvantum/${qtThemeName}".source = "${catppuccinKvantum}/share/Kvantum/${qtThemeName}";
    "Kvantum/kvantum.kvconfig".source = (pkgs.formats.ini { }).generate "kvantum.kvconfig" {
      General.theme = qtThemeName;
    };
  };
}
