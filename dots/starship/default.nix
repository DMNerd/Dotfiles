{...}: {
  programs.starship.enable = true;

  programs.starship.settings = {
    command_timeout = 3000;
    directory.fish_style_pwd_dir_length = 1;
    directory.truncation_length = 2;
    gcloud.disabled = true;
    memory_usage.disabled = true;
    shlvl.disabled = false;
    nix_shell.heuristic = true;
  };
}
