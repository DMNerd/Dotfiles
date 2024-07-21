{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    eza
    git
    just
    lua
    macchina
    neovim
  ];
}
