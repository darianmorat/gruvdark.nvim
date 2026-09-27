local M = {}

M.palettes = {
   shibumi = {
      -- Base
      fg = "#D6CFC4",
      fg_light = "#E6E3DE",

      none = "NONE",

      line_nr = "#545454",
      cursor_nr = "#B1AFA8",
      punc_char = "#9D9A94",

      blue = "#579DD4",
      red = "#E16464",
      green = "#72BA62",
      pink = "#D159B6",
      purple = "#9266DA",
      aqua = "#00A596",
      orange = "#D19F66",
      grey = "#575757",

      -- Background
      bg0 = "#1E1E1E",
      bg1 = "#232323",
      bg2 = "#252525",
      bg3 = "#303030",
      bg4 = "#323232",
      bg5 = "#373737",
      bg6 = "#3C3C3C",
      bg7 = "#424242",

      -- Git diff
      diff_add = "#2D3A2A",
      diff_delete = "#3A292B",
      diff_change = "#1C3448",
      diff_text = "#355C7C",
   },

   shibumi_light = {
      -- Base
      fg = "#070707",
      fg_light = "#000000",

      none = "NONE",

      line_nr = "#8D8A85",
      cursor_nr = "#212121",
      punc_char = "#82807A",

      blue = "#0F5289",
      red = "#9F0202",
      green = "#006C00",
      pink = "#910E79",
      purple = "#5D4A8A",
      aqua = "#017F75",
      orange = "#AE5F05",
      grey = "#707070",

      -- Background
      bg0 = "#F7F5EA",
      bg1 = "#EDEDDF",
      bg2 = "#E5E5DA",
      bg3 = "#D0D0C6",
      bg5 = "#CCCCC4",
      bg4 = "#C5C5BB",
      bg6 = "#C0C0B6",
      bg7 = "#B8B8AE",

      -- Git diff
      diff_add = "#DAF6DC",
      diff_delete = "#F4D3D6",
      diff_change = "#DFEAFA",
      diff_text = "#CAD3E0",
   },
}

return M
