return function (config)
    config.enable_tab_bar = false
    config.enable_scroll_bar = false
    config.window_decorations = "RESIZE"

    config.window_background_opacity = 0.65

    -- config.window_background_image = "$HOME/Pictures/zenburn-background.png"

    config.window_background_image_hsb = {
        -- Darken the background image
        brightness = 0.3,

        -- You can adjust the hue by scaling its value.
        -- a multiplier of 1.0 leaves the value unchanged.
        hue = 1.0,

        -- You can adjust the saturation also.
        saturation = 1.0,
    }

    config.window_padding = {
        left = '12pt',
        right = '0',
        top = '12pt',
        bottom = '12pt'
    }

    config.inactive_pane_hsb = {
        saturation = 0.9,
        brightness = 0.8,
    }
end
