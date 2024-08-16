{...}: {
  programs = {
    zsh = {
      enable = true;
      autocd = true;
      dotDir = ".config/zsh";
      history = {
        expireDuplicatesFirst = true;
        ignoreDups = true;
        ignoreSpace = true; # ignore commands starting with a space
        save = 20000;
        size = 20000;
        share = true;
      };
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
