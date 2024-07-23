{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    btop
    eza
    git
    just
    macchina
    neovim
    skhd
    yabai
  ];
}
