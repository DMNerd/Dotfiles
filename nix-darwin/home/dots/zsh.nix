{
  inputs,
  pkgs,
  lib,
  config,
  ...
}: {
  programs = {
    zsh = {
      enable = true;
      zplug = {
        enable = true;
        plugins = [
          {name = "zsh-users/zsh-autosuggestions";}
          {name = "zsh-users/zsh-syntax-highlighting";}
          {name = "zsh-users/zsh-completions";}
          {name = "zsh-users/zsh-history-substring-search";}
        ];
      };
      shellAliases = {
        ls = "eza";
        top = "btop";
        weather = "curl wttr.in";
      };

      initExtra = ''
        macchina

        eval $(thefuck --alias)
      '';
    };
  };
}
