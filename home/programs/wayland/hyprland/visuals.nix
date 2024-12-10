{ ... }: {
    wayland.windowManager.hyprland.settings = { 
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
        dim_inactive = false;
        dim_strength = 0.2;

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
    };
}