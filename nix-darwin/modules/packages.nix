{ pkgs, ... }: {
    environment.systemPackages = with pkgs;
    [ 
        neovim
        macchina
        lsd
    ];
    environment.variables.EDITOR = "nvim";
}