hl.window_rule({
  name = "pulseaudio",
  match = {
    class = "org.pulseaudio.pavucontrol",
  },
  float = true,
  size = "{800, 600}",
});

hl.window_rule({
  name = "steam float",
  match = {
    initial_class = "steam",
    initial_title = "negative:Steam",
  },
  float = true,
});

hl.window_rule({
  name = "exiled exchange 2",
  match = {
    title = "(Exiled Echange 2)",
  },
  tag = "+ee2"
});

hl.window_rule({
  name = "im dumb",
  match = {
    tag = "(Exiled Echange 2)",
  },
  no_blur = true,
});
