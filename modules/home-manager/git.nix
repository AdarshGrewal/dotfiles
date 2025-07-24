# modules/home-manager/git.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:
{
  programs.git = {
    enable = true;
    lfs.enable = true;
    userName = "AdarshGrewal";
    userEmail = "adarshgrewal@gmail.com";
    aliases = {
      lol = "log --graph --oneline --decorate --all";
      find-merge = "!sh -c 'commit=$0 && branch=${"1:-HEAD"} && (git rev-list $commit..$branch --ancestry-path | cat -n; git rev-list $commit..$branch --first-parent | cat -n) | sort -k2 -s | uniq -f1 -d | sort -n | tail -1 | cut -f2'";
      show-merge = "!sh -c 'merge=$(git find-merge $0 $1) && [ -n \"$merge\" ] && git show $merge'";
    };
    extraConfig = ''
      [color]
        ui = auto
      [url "git@github.com:"]
        insteadOf = https://github.com/
      [url "git@git-ssh.mainlining.org:"]
        insteadOf = https://git.mainlining.org/
      [url "git@gitlab.com:"]
        insteadOf = https://gitlab.com/
    '';
  };
}
