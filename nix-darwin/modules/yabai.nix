{pkgs, ...}: {
  services.yabai = {
    enable = true;
    enableScriptingAddition = true;
    config = {
      focus_follows_mouse          = "autoraise";
      mouse_follows_focus          = "off";
      window_placement             = "second_child";
      window_opacity               = "off";
      window_opacity_duration      = "0.0";
      window_border                = "on";
      window_border_placement      = "inset";
      window_border_width          = 2;
      window_border_radius         = 3;
      active_window_border_topmost = "off";
      window_topmost               = "on";
      window_shadow                = "float";
      active_window_opacity        = "1.0";
      normal_window_opacity        = "1.0";
      split_ratio                  = "0.50";
      auto_balance                 = "on";
      mouse_modifier               = "fn";
      mouse_action1                = "move";
      mouse_action2                = "resize";
      layout                       = "bsp";
      top_padding                  = 10;
      bottom_padding               = 10;
      left_padding                 = 10;
      right_padding                = 10;
      window_gap                   = 10;
    };

    extraConfig = ''
        # float system preferences. Most of these just diable Yabai form resizing them.
        yabai -m rule --add app="^1Password 7$" manage=off
        yabai -m rule --add app="^Adobe Creative Cloud$" manage=off
        yabai -m rule --add app="^Adobe Media Encoder CC 2018$" manage=off
        yabai -m rule --add app="^Audio Hijack$" manage=off
        yabai -m rule --add app="^BrowserStackLocal$" manage=off
        yabai -m rule --add app="^CodeKit$" manage=off
        yabai -m rule --add app="^Dash$" manage=off
        yabai -m rule --add app="^Docker Desktop$" manage=off
        yabai -m rule --add app="^Dropbox$" manage=off
        yabai -m rule --add app="^Hidden Bar$" manage=off
        yabai -m rule --add app="^ImageOptim$" manage=off
        yabai -m rule --add app="^OTP Auth$" manage=off
        yabai -m rule --add app="^Prism Launcher$" manage=off
        yabai -m rule --add app="^ATLauncher$" manage=off
        yabai -m rule --add app="^Karabiner-Elements$" manage=off
        yabai -m rule --add app="^Karabiner-EventViewer$" manage=off
        yabai -m rule --add app="^Kitematic$" manage=off
        yabai -m rule --add app="^Loopback$" manage=off
        yabai -m rule --add app="^Microsoft Remote Desktop$" manage=off
        yabai -m rule --add app="^Microsoft Teams$" manage=off
        yabai -m rule --add app="^Keka$" manage=off
        yabai -m rule --add app="^TunnelBear$" manage=off
        yabai -m rule --add app="^GitHub Desktop$" manage=off
        yabai -m rule --add app="^VMware Fusion$" manage=off
        yabai -m rule --add app="^Logitech G HUB$" manage=off
        yabai -m rule --add app="^p4merge$" manage=off
        yabai -m rule --add app="^zoom.us$" manage=off
        yabai -m rule --add app="^Disk Utility$" manage=off
        yabai -m rule --add app="^Activity Monitor$" manage=off
        yabai -m rule --add app="^Path Finder$" manage=off
        yabai -m rule --add app="^Discord$" manage=off
        yabai -m rule --add app="^Calendar$" manage=off
        yabai -m rule --add app="^Calculator$" manage=off
        yabai -m rule --add app="^Podcasts$" manage=off
        yabai -m rule --add app="^Music$" manage=off
        yabai -m rule --add app="^Sono$" manage=off
        #float system preferences
        yabai -m rule --add app="^System Settings$" manage=off
        yabai -m rule --add app="^System Information$" manage=off
        yabai -m rule --add app="^System Preferences$" manage=off
        yabai -m rule --add app="^Installer$" manage=off
        yabai -m rule --add title='Preferences$' manage=off
        yabai -m rule --add title='^Archive Utility$' manage=off
      '';
    };
}
