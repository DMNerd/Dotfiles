{pkgs, ...}: {
  # Packages
  environment.systemPackages = with pkgs; [
    git
  ];
  programs.nix-ld = {
    enable = true;
    package = pkgs.nix-ld-rs;
};
  programs.zsh.enable = true;
}
