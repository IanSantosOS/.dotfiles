-- WEZTERM API
local wezterm = require('wezterm')
local config = wezterm.config_builder()

-- CONFIGS

require('config.fonts')(config)
require('config.window')(config)
-- require('config.colors')(config)
require('config.keys')(config)

return config
