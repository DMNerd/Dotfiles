{pkgs, ...}: {
  services.yabai = {
    enable = true;
    enableScriptingAddition = false;
    config = {
      focus_follows_mouse = "autoraise";
      mouse_follows_focus = "off";
      window_placement = "second_child";
      window_opacity = "off";
      window_opacity_duration = "0.0";
      window_topmost = "on";
      window_shadow = "float";
      active_window_opacity = "1.0";
      normal_window_opacity = "1.0";
      split_ratio = "0.50";
      auto_balance = "on";
      mouse_modifier = "fn";
      mouse_action1 = "move";
      mouse_action2 = "resize";
      layout = "bsp";
      top_padding = 10;
      bottom_padding = 10;
      left_padding = 10;
      right_padding = 10;
      window_gap = 10;
    };

    extraConfig = ''
      # float system preferences. Most of these just diable Yabai form resizing them.
      yabai -m rule --add app="^Activity Monitor$" manage=off
      yabai -m rule --add app="^Adobe Creative Cloud$" manage=off
      yabai -m rule --add app="^BrowserStackLocal$" manage=off
      yabai -m rule --add app="^Calculator$" manage=off
      yabai -m rule --add app="^Calendar$" manage=off
      yabai -m rule --add app="^CodeKit$" manage=off
      yabai -m rule --add app="^Cryptomator$" manage=off
      yabai -m rule --add app="^Discord$" manage=off
      yabai -m rule --add app="^Disk Utility$" manage=off
      yabai -m rule --add app="^Docker Desktop$" manage=off
      yabai -m rule --add app="^GitHub Desktop$" manage=off
      yabai -m rule --add app="^Hidden Bar$" manage=off
      yabai -m rule --add app="^ImageOptim$" manage=off
      yabai -m rule --add app="^Keka$" manage=off
      yabai -m rule --add app="^Loopback$" manage=off
      yabai -m rule --add app="^Microsoft Remote Desktop$" manage=off
      yabai -m rule --add app="^Microsoft Teams$" manage=off
      yabai -m rule --add app="^Music$" manage=off
      yabai -m rule --add app="^OTP Auth$" manage=off
      yabai -m rule --add app="^Path Finder$" manage=off
      yabai -m rule --add app="^Podcasts$" manage=off
      yabai -m rule --add app="^Prism Launcher$" manage=off
      yabai -m rule --add app="^Raycast$" manage=off
      yabai -m rule --add app="^Sono$" manage=off
      yabai -m rule --add app="^VMware Fusion$" manage=off
      yabai -m rule --add app="^AppCleaner$" manage=off
      #float system preferences
      yabai -m rule --add app="^Installer$" manage=off
      yabai -m rule --add app="^System Information$" manage=off
      yabai -m rule --add app="^System Preferences$" manage=off
      yabai -m rule --add app="^System Settings$" manage=off
      yabai -m rule --add title='Preferences$' manage=off
      yabai -m rule --add title='^Archive Utility$' manage=off
      yabai -m rule --add label="Safari Floating" app="^Safari$" title="(General|Tabs|AutoFill|Passwords|Search|Security|Privacy|Websites|Profiles|Extensions|Advanced)" manage=off
    '';
  };
  services.skhd.enable = true;
  services.skhd.skhdConfig = "
    # -- Changing Window Focus --

    # change window focus within space
    alt - j : yabai -m window --focus south
    alt - k : yabai -m window --focus north
    alt - h : yabai -m window --focus west
    alt - l : yabai -m window --focus east

    #change focus between external displays (left and right)
    alt - s: yabai -m display --focus west
    alt - g: yabai -m display --focus east

    # -- Modifying the Layout --

    # rotate layout clockwise
    shift + alt - r : yabai -m space --rotate 270

    # flip along y-axis
    shift + alt - y : yabai -m space --mirror y-axis

    # flip along x-axis
    shift + alt - x : yabai -m space --mirror x-axis

    # toggle window float
    shift + alt - t : yabai -m window --toggle float --grid 4:4:1:1:2:2


    # -- Modifying Window Size --

    # maximize a window
    shift + alt - m : yabai -m window --toggle zoom-fullscreen

    # balance out tree of windows (resize to occupy same area)
    shift + alt - e : yabai -m space --balance

    # -- Moving Windows Around --

    # swap windows
    shift + alt - j : yabai -m window --swap south
    shift + alt - k : yabai -m window --swap north
    shift + alt - h : yabai -m window --swap west
    shift + alt - l : yabai -m window --swap east

    # move window and split
    ctrl + alt - j : yabai -m window --warp south
    ctrl + alt - k : yabai -m window --warp north
    ctrl + alt - h : yabai -m window --warp west
    ctrl + alt - l : yabai -m window --warp east

    # move window to display left and right
    shift + alt - s : yabai -m window --display west; yabai -m display --focus west;
    shift + alt - g : yabai -m window --display east; yabai -m display --focus east;


    # move window to prev and next space
    shift + alt - p : yabai -m window --space prev;
    shift + alt - n : yabai -m window --space next;

    # move window to space #
    shift + alt - 1 : yabai -m window --space 1;
    shift + alt - 2 : yabai -m window --space 2;
    shift + alt - 3 : yabai -m window --space 3;
    shift + alt - 4 : yabai -m window --space 4;
    shift + alt - 5 : yabai -m window --space 5;
    shift + alt - 6 : yabai -m window --space 6;
    shift + alt - 7 : yabai -m window --space 7;
  ";
  services.jankyborders.enable = true;
  services.jankyborders.active_color = "0xffDBDBDB";
  services.jankyborders.inactive_color = "0xffb0a8b9";
}
