local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local terminal = "ghostty"
local menu = "wofi -H 400 -W 600 --show drun --insensitive -I"

-- discord passthrough
hl.bind("XF86TouchpadToggle", hl.dsp.pass({ window = "class:discord" }),
  { ignore_mods = true, non_consuming = true })
hl.bind("XF86TouchpadToggle", hl.dsp.pass({ window = "class:discord" }),
  { ignore_mods = true, release = true, non_consuming = true })

-- testing bind
-- hl.bind("XF86TouchpadToggle", hl.dsp.pass({ window = "class:wev" }),
--  { ignore_mods = true, non_consuming = true })
-- hl.bind("XF86TouchpadToggle", hl.dsp.pass({ window = "class:wev" }),
--  { ignore_mods = true, release = true, non_consuming = true })

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("uwsm app -- " .. terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("uwsm app -- " .. menu))
hl.bind(mainMod .. " + ALT + L", hl.dsp.exec_cmd("lock-screen"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Move window with mainMod + arrow keys
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
for i = 1, 10 do
  local key = i % 10
  hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
  hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + ALT + 1", hl.dsp.workspace.move({ monitor = 1 }))
hl.bind(mainMod .. " + ALT + 2", hl.dsp.workspace.move({ monitor = 0 }))

-- Audio
hl.bind(mainMod .. " + period", hl.dsp.exec_cmd("speaker"))
hl.bind(mainMod .. " + equal", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
  { repeating = true })
hl.bind(mainMod .. " + minus", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("hyprshot -m active -m window --clipboard-only"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region -z --clipboard-only"))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
