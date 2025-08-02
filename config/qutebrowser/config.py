config.load_autoconfig()

c.qt.args = [
        "use-gl desktop",
        "enable-gpu-rasterization",
        "ignore-gpu-blocklist",
        "enable-accelerated-2d-canvas",
        "enable-accelerated-video-decode"
        ]
c.qt.workarounds.disable_accelerated_2d_canvas = 'never'
config.bind('v', 'hint links spawn --detach mpv {hint-url}')
config.bind('V', 'hint links spawn umpv {hint-url}')
c.colors.webpage.darkmode.enabled = True
c.tabs.select_on_remove = "last-used"
c.tabs.new_position.related = "last"
c.tabs.last_close = "close"
c.tabs.mousewheel_switching = False
c.tabs.max_width = 128
c.content.autoplay = False
c.content.blocking.method = "both"
c.editor.command = ["gnome-terminal", "--wait", "--", "nvim", "+call cursor({line}, {column})", "--", "{file}"]
c.spellcheck.languages = ["en-US"]
c.auto_save.session = True
c.statusbar.position = "top"
c.downloads.location.prompt = False

#Theme
c.colors.tabs.selected.odd.fg = "floralwhite"
c.colors.tabs.selected.odd.bg = "darkolivegreen"
c.colors.tabs.selected.even.fg = "floralwhite"
c.colors.tabs.selected.even.bg = "darkolivegreen"
c.colors.tabs.pinned.selected.odd.fg = "floralwhite"
c.colors.tabs.pinned.selected.even.fg = "floralwhite"
c.colors.tabs.pinned.selected.odd.bg = "darkolivegreen"
c.colors.tabs.pinned.selected.even.bg = "darkolivegreen"
c.colors.tabs.odd.fg = "black"
c.colors.tabs.even.fg = "black"

c.tabs.padding = {"bottom": 4, "left": 5, "right": 5, "top": 4}

