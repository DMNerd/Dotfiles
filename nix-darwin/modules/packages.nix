{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    just
    lsd
    macchina
    neovim
  ];
  environment.variables.EDITOR = "nvim";
}
