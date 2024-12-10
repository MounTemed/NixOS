{ ... }: {
    wayland.windowManager.hyprland.settings = {
        env = [
            "LIBVA_DRIVER_NAME,nvidia"
            "__GLX_VENDOR_LIBRARY_NAME,nvidia"
            "NVD_BACKEND,direct"
            "ELECTRON_OZONE_PLATFORM_HINT,auto"
        ];
    };
}