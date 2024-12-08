local wezterm = require('wezterm')

local font_family = {
    --[[ 1 ]] 'FiraCode Nerd Font',
    -- --[[ 2 ]] 'Caskaydia Cove Nerd Font',
    -- --[[ 3 ]] 'JetBrainsMono Nerd Font',
    -- --[[ 4 ]] 'Agave Nerd Font',
    -- --[[ 5 ]] 'CommitMono Nerd Font',
    -- --[[ 6 ]] 'Hack Nerd Font',
    -- --[[ 7 ]] 'MesloLGL Nerd Font',

    --[[ X ]] 'HanaMinA',
    --[[ X ]] 'Noto Sans CJK SC',
    --[[ X ]] 'Noto Sans CJK TC',
    --[[ X ]] 'Noto Sans CJK JP',
    --[[ X ]] 'Noto Sans CJK KR',
}

return function (config)
    config.font = wezterm.font_with_fallback(font_family, { weight = 'DemiBold'})
    config.font_size = 11
    config.text_background_opacity = 1.0

    -- FiraCode https://github.com/tonsky/FiraCode/wiki/How-to-enable-stylistic-sets
    if (font_family[1] == 'FiraCode Nerd Font') then
        config.harfbuzz_features = {
            'cv18', -- %
            'ss03', -- &
            'cv31', -- ()
            'ss08', -- == === != !==
        }
    end
end
