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
      window_shadow = "off";
      active_window_opacity = "1.0";
      normal_window_opacity = "0.8";
      insert_feedback_color = "0xffA846A0";
      split_ratio = "0.50";
      auto_balance = "on";
      mouse_modifier = "fn";
      mouse_action1 = "move";
      mouse_action2 = "resize";
      mouse_drop_action = "swap";
      layout = "bsp";
      top_padding = 10;
      bottom_padding = 10;
      left_padding = 10;
      right_padding = 10;
      window_gap = 10;
      #external_bar = "all:34:0";
    };

    extraConfig = ''
      # float system preferences. Most of these just diable Yabai form resizing them.
      yabai -m rule --add app="^(Activity Monitor|Adobe Creative Cloud|BrowserStackLocal|Calculator|Calendar|CodeKit|Cryptomator|Discord|Disk Utility|Docker Desktop|GitHub Desktop|GitKraken|OrbStack|Hidden Bar|ImageOptim|Keka|Loopback|Microsoft Remote Desktop|Microsoft Teams|Music|OTP Auth|Path Finder|Podcasts|Prism Launcher|Raycast|Sono|VMware Fusion|AppCleaner|Transmission)$" manage=off
      #float system preferences
      yabai -m rule --add app="^Installer$" manage=off
      yabai -m rule --add app="^System.*$" manage=off
      yabai -m rule --add app="^Photos.*$" manage=off
      yabai -m rule --add label="System floating" title='^(.*Time Machine.*|.*Preferences$|.*Settings$|.*Setup$|Archive Utility$|App Store$)' manage=off
      yabai -m rule --add label="Safari Floating" app="^Safari$" title="(General|Tabs|AutoFill|Passwords|Search|Security|Privacy|Websites|Profiles|Extensions|Advanced)" manage=off
      yabai -m rule --add label="Mail Floating" app="^Mail$" title="(New Message|^Re.*$)" manage=off
      yabai -m rule --add label="Finder" app="^Finder$" title="(Copy|Trash|Bin|About This Mac|Info|Connect to Server|Connecting to Server)" manage=off
    '';
  };
  services.skhd.enable = true;
  services.skhd.skhdConfig = ''
    # block alt +a / u/ o/ s (jf)

    shift + alt - 1: yabai -m window --space  1; yabai -m space --focus 1
    shift + alt - 2: yabai -m window --space  2; yabai -m space --focus 2
    shift + alt - 3: yabai -m window --space  3; yabai -m space --focus 3
    shift + alt - 4: yabai -m window --space  4; yabai -m space --focus 4
    shift + alt - 5: yabai -m window --space  5; yabai -m space --focus 5
    shift + alt - 6: yabai -m window --space  6; yabai -m space --focus 6
    shift + alt - 7: yabai -m window --space  7; yabai -m space --focus 7
    shift + alt - 8: yabai -m window --space  8; yabai -m space --focus 8
    shift + alt - 9: yabai -m window --space  9; yabai -m space --focus 9
    shift + alt - 0: yabai -m window --space  10; yabai -m space --focus 10

    # Float / Unfloat window
    shift + alt - space : \
    yabai -m window --toggle float; \
    yabai -m window --toggle border

    alt - d : yabai -m space --layout $(yabai -m query --spaces --space | jq -r 'if .type == "bsp" then "stack" else "bsp" end')
    alt - return: open -a Warp -n
  '';
  services.jankyborders.enable = true;
  services.jankyborders.active_color = "0xffA846A0";
  services.jankyborders.inactive_color = "0xc02c2e34";
  services.jankyborders.background_color = "0x302c2e34";
  services.jankyborders.hidpi = true;
  services.jankyborders.ax_focus = true;
  services.jankyborders.width = 7.0;
  services.jankyborders.blacklist = [
    "FaceTime"
  ];
  services.sketchybar.enable = false;
  services.sketchybar.extraPackages = [
    pkgs.jq
    pkgs.lua5_4
  ];
}
