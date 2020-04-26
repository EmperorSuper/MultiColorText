# MultiColorText


## Example:
```
hook.Add("HUDPaint", "HUDPaint_MultiColorText_Example", function()
  draw.MultiColorText("Default", ScrW()/2, ScrH()/2, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, Color(255, 0, 0), "This text ", Color(0, 255, 0), "has multiple ", Color(0, 0, 255), "different colors")
end)
```



## API Context:
**Font**: A font created with [surface.CreateFont](https://wiki.facepunch.com/gmod/surface.CreateFont).

**x**: The X coordinate on the screen.

**y**: The Y coordinate on the screen.

**xAlign**: The alignment of the X coordinate using [Enums/TEXT_ALIGN](https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN).

**yAlign**: The alignment of the Y coordinate using [Enums/TEXT_ALIGN](https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN).

**vararg**: A [vararg](https://wiki.facepunch.com/gmod/vararg) of colors and strings. Any non string value will be converted to a string with [tostring()](https://wiki.facepunch.com/gmod/Global.tostring).

```
draw.MultiColorText(Font, x, y, xAlign, yAlign, vararg)
```
