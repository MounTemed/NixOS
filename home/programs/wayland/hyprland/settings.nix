{ ... }: {
    wayland.windowManager.hyprland.settings = {

        monitor = [ "DP-1, 2560x1440@170, 0x0, 1" ];

        exec-once = [
            "waypaper --restore"
            "hyprctl setcursor Bibata-Modern-Classic 19"
        ];

        input = {
            kb_layout = "us,ru";
            kb_options = "grp:alt_shift_toggle";
            
            sensitivity = 0;
            follow_mouse = 1;

            touchdevice.enabled = false;
        };

        misc = {
            disable_hyprland_logo = true;
            vrr = 1;
        };

        render = {
            explicit_sync = 2;
            explicit_sync_kms = 2;
        };

        xwayland = {
            force_zero_scaling = true;
        };

        cursor = {
            no_hardware_cursors = true;
        };

        dwindle = {
            pseudotile = true;
            preserve_split = true;
        };

    };
}