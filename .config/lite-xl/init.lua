local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

-- light theme:
core.reload_module("colors.scb")

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }

-- customize fonts:
-- style.font = renderer.font.load(DATADIR .. "/fonts/font.ttf", 13 * SCALE)
-- style.code_font = renderer.font.load(DATADIR .. "/fonts/monospace.ttf", 12 * SCALE)
--
-- font names used by lite:
-- style.font          : user interface
-- style.big_font      : big text in welcome screen
-- style.icon_font     : icons
-- style.icon_big_font : toolbar icons
-- style.code_font     : code
--
-- the function to load the font accept a 3rd optional argument like:
--
-- {antialiasing="grayscale", hinting="full"}
--
-- possible values are:
-- antialiasing: grayscale, subpixel
-- hinting: none, slight, full

-- enable or disable plugin loading setting config entries:

-- enable trimwhitespace, otherwise it is disable by default:
config.trimwhitespace = true
--
-- disable detectindent, otherwise it is enabled by default
-- config.detectindent = false
