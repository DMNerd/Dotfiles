{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    eza
    git
    just
    macchina
    neovim
  ];
}
