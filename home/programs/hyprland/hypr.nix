{ ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      env = [
        "GBM_BACKEND,nvidia-drm;"
        "__GLX_VENDOR_LIBRARY_NAME,nvidia;"
        "LIBVA_DRIVER_NAME,nvidia;"
        "SDL_VIDEODRIVER, wayland;"
        "CLUTTER_BACKEND, wayland;"
        "EGL_BACKEND, wayland;"
        "XDG_CURRENT_DESKTOP,Hyprland;"
        "XDG_SESSION_TYPE,wayland;"
        "XDG_SESSION_DESKTOP,Hyprland;"
        "XCURSOR_THEME,Ice;"
        "XCURSOR_SIZE,20;"
      ];

      cursor = {
        no_hardware_cursors = true;
        no_break_fs_vrr = true;
      };

      monitor = [ "DP-1,2560x1440@170,0x0,1" ];

      exec-once = [
        "/usr/lib/polkit-kde-authentication-agent-1"
        "waypaper --restore"
        "hyprctl setcursor Ice 20"
      ];

      input = {
        kb_layout = "us,ru";
        kb_variant = "lang";
        kb_model = "";
        kb_options = "grp:alt_shift_toggle";
        kb_rules = "";

        follow_mouse = 1;

        touchpad = { natural_scroll = false; };

        sensitivity = 0;
      };

      general = {
        gaps_in = 7;
        gaps_out = 7;
        border_size = 0;
        resize_on_border = false;
        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 7;
        active_opacity = 1.0;
        inactive_opacity = 1.0;
        #drop_shadow = true;
        #shadow_range = 10;
        #shadow_render_power = 2;
        dim_inactive = false;
        dim_strength = 0.2;
        #"col.shadow" = "rgba(122, 147, 255, 7.0)";
        #"col.shadow_inactive" = "rgba(162, 148, 254, 0.3)";
	shadow = {
	  enabled = true;
	  color = "rgba(122, 147, 255, 7.0)";
	  color_inactive = "rgba(162, 148, 254, 0.3)";
	  range = 10;
	  render_power = 2;
	}; 
      };

      decoration = {
        dim_special = 0.5;

        blur = {
          enabled = true;
          xray = true;
          special = false;
          new_optimizations = true;
          brightness = 1.0;
          contrast = 1.0;
          passes = 4;
          size = 14;
        };
      };

      misc = {
        force_default_wallpaper = 0;
        vrr = 1;
        disable_hyprland_logo = true;
      };

      "render:explicit_sync" = 1;

      animations = {
        enabled = true;

        bezier = [
          "md3_standard, 0.2, 0, 0, 1"
          "md3_decel, 0.05, 0.7, 0.1, 1"
          "md3_accel, 0.3, 0.8, 0.8, 0.15"
          "overshot, 0.05, 0.9, 0.1, 1.1"
          "crazyshot, 0.1, 1.5, 0.76, 0.92"
          "hyprnostretch, 0.05, 0.9, 0.1, 1"
          "fluent_decel, 0.1, 1, 0, 1"
          "easeInOutCirc, 0.85, 0, 0.15, 1"
          "easeOutCirt, 0, 0.55, 0.45, 1"
        ];

        animation = [
          "windows, 1, 3, overshot, popin 60%"
          "windowsOut, 1, 6, default, popin 70%"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 2, default"
          "workspaces, 1, 3, md3_decel, slidefade 8%"
          "specialWorkspace, 1, 3, md3_decel, slidevert"
        ];
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      gestures = { workspace_swipe = false; };

      "$mainMod" = "SUPER";

      bind = [

        "$mainMod, RETURN, exec, kitty"
        "$mainMod, H, exec, hyprpicker -a"
        "$mainMod, Q, killactive,"
        "$mainMod, N, exec, nautilus"
        "$mainMod, T, togglefloating,"
        "$mainMod, R, exec, wofi --show drun"
        ", PRINT, exec, grim - | wl-copy"
        #"$mainMod, F, exec, firefox"
        #"$mainMod, C, exec, code --disable-gpu"
        #"$mainMod, R, exec, ~/.config/rofi/launchers/type-6/launcher.sh -show drun"
        #"$mainMod, E, exec, telegram-desktop"
        #"$mainMod, S, exec, spotify"

        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        "$mainMod ALT, left, movewindow, l"
        "$mainMod ALT, right, movewindow, r"
        "$mainMod ALT, up, movewindow, u"
        "$mainMod ALT, down, movewindow, d"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      windowrulev2 =
        [ "float, class:^(Rofi)$" "suppressevent maximize, class:.*" ];
    };
  };
}
