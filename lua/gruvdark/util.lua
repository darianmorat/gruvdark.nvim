local util = {}

local function hexToRgb(hex_str)
   if not hex_str or hex_str == "NONE" or hex_str == "none" then
      return nil
   end

   local hex = "[abcdef0-9][abcdef0-9]"
   local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
   hex_str = string.lower(hex_str)
   local r, g, b = string.match(hex_str, pat)

   if not r or not g or not b then
      return nil
   end

   return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

function util.blend(fg, bg, alpha)
   if fg == "NONE" or bg == "NONE" then
      return "NONE"
   end

   local bg_rgb = hexToRgb(bg)
   local fg_rgb = hexToRgb(fg)

   if not bg_rgb or not fg_rgb then
      return fg
   end

   local blendChannel = function(i)
      local ret = (alpha * fg_rgb[i] + ((1 - alpha) * bg_rgb[i]))
      return math.floor(math.min(math.max(0, ret), 255) + 0.5)
   end

   return string.format(
      "#%02X%02X%02X",
      blendChannel(1),
      blendChannel(2),
      blendChannel(3)
   )
end

function util.darken(hex, amount, bg)
   if hex == "NONE" or bg == "NONE" then
      return "NONE"
   end

   return util.blend(hex, bg, math.abs(amount))
end

return util
