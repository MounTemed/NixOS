{ ... }: {
    wayland.windowManager.hyprland.settings = {
        
        "$main" = "SUPER";

        bindm = [
            "$main, mouse:272, movewindow"
            "$main, mouse:273, resizewindow"
        ];

        bind = [

            "$main, K, exec, kitty"
            "$main, Q, killactive"
            "$main, N, exec, nautilus"
            "$main, H, exec, hyprpicker -a"
            "$main, T, togglefloating,"
            "$main, R, exec, wofi --show drun"
            ", PRINT, exec, grim - | wl-copy"

            "$main ALT, left, movewindow, l"
            "$main ALT, right, movewindow, r"
            "$main ALT, up, movewindow, u"
            "$main ALT, down, movewindow, d"

            "$main, 1, workspace, 1"
            "$main, 3, workspace, 3"
            "$main, 2, workspace, 2"
            "$main, 4, workspace, 4"
            "$main, 5, workspace, 5"
            "$main, 6, workspace, 6"
            "$main, 7, workspace, 7"
            "$main, 8, workspace, 8"
            "$main, 9, workspace, 9"
            "$main, 0, workspace, 10"

            "$main SHIFT, 1, movetoworkspace, 1"
            "$main SHIFT, 2, movetoworkspace, 2"
            "$main SHIFT, 3, movetoworkspace, 3"
            "$main SHIFT, 4, movetoworkspace, 4"
            "$main SHIFT, 5, movetoworkspace, 5"
            "$main SHIFT, 6, movetoworkspace, 6"
            "$main SHIFT, 7, movetoworkspace, 7"
            "$main SHIFT, 8, movetoworkspace, 8"
            "$main SHIFT, 9, movetoworkspace, 9"
            "$main SHIFT, 0, movetoworkspace, 10"

            "$main, mouse_down, workspace, e+1"
            "$main, mouse_up, workspace, e-1"

        ];
    };
}