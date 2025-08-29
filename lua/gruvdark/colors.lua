local M = {}

M.palettes = {
   gruvdark = {
      -- Base
      fg = "#D6CFC4",
      fg_light = "#E6E3DE",
      blue = "#579DD4",
      blue_dark = "#2A404F",
      red = "#E16464",
      red_dark = "#B55353",
      green = "#72BA62",
      pink = "#D159B6",
      purple = "#9266DA",
      aqua = "#00A596",
      orange = "#D19F66",
      grey = "#575757",
      grey_light = "#9D9A94",

      -- Background
      bg = "#1E1E1E",
      bg1 = "#303030",
      bg2 = "#3C3C3C",
      bg3 = "#373737",
      bg4 = "#424242",
      bg5 = "#323232",

      -- Special
      selection = "#303030",
      column = "#232323",
      indent = "#323232",
      status_line = "#252525",
      none = "NONE",

      -- Diff
      diff_add = "#31392b",
      diff_delete = "#382b2c",
      diff_change = "#1c3448",
      diff_text = "#2c5372",
   },

   gruvdark_light = {
      -- Base
      fg = "#111111",
      fg_light = "#000000",
      blue = "#1E5A8B",
      blue_dark = "#144266",
      red = "#9F0202",
      red_dark = "#7A0101",
      green = "#006C00",
      pink = "#910E79",
      purple = "#5D4A8A",
      aqua = "#008B7F",
      orange = "#AE5F05",
      grey = "#707070",
      grey_light = "#8D8A85",

      -- Background
      bg = "#F7F5EA",
      bg1 = "#C5C5BB",
      bg2 = "#EDEDDF",
      bg3 = "#CCCCC4",
      bg4 = "#B8B8AE",
      bg5 = "#D0D0C6",

      -- Special
      selection = "#C5C5BB",
      column = "#EDEDDF",
      indent = "#C0C0B6",
      status_line = "#E5E5DA",
      none = "NONE",

      -- Diff
      diff_add = "#E6F4E6",
      diff_delete = "#F4E6E6",
      diff_change = "#E6F0F8",
      diff_text = "#D0E4F2",
   },
}

return M
