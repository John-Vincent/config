local flamingo = "rgb(f2cdcd)"
local mauve = "rgb(cba6f7)"
local subtext0 = "rgb(a6adc8)"
local lavender = "rgb(b4befe)"
local gray = "rgba(595959aa)"
local darkGray = "rgba(1a1a1aee)"

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.monitor({
  output = "DP-1",
  mode = "2560x1440@143.86",
  position = "0x0",
  scale = 1,
})
hl.monitor({
  output = "HDMI-A-1",
  mode = "1920x1080@60",
  position = "2560x0",
  scale = 1
})

hl.config({
  animations = {
    enabled = true,
  },
  general = {
    gaps_in = 5,
    gaps_out = 5,
    border_size = 2,
    col = {
      active_border = {
        colors = { mauve, lavender },
        angel = 90,
      },
      inactive_border = gray,
    },
    resize_on_border = false,
    allow_tearing = false,
    layout = "dwindle"
  },
  decoration = {
    rouding = 10,
    rounding_power = 2,
    active_opacity = 1.0,
    inactive_opacity = 1.0,

    blur = {
      enabled = true,
      size = 7,
      passes = 2,
      vibrancy = 0.1696,
    },

    shadow = {
      enabled = true,
      range = 4,
      render_power = 3,
      color = darkGray,
    },
  },
  input = {
    kb_layout = "us",
    follow_mouse = 1,
    sensitivity = 0,
    force_no_accel = true,
  },
  misc = {
    disable_autoreload = true,
    key_press_enables_dpms = true,
    disable_splash_rendering = true,
  },
  dwindle = {
    preserve_split = true,
  }
})
