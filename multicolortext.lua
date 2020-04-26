local Color_White = Color(255, 255, 255)
function draw.MultiColorText(Font, x, y, xAlign, yAlign, ...)
	surface.SetFont(Font)
	local CurX = x
	local CurColor = nil
	local AllText = ""
	for k, v in pairs{...} do
		if not IsColor(v) then
			AllText = AllText .. tostring(v)
		end
	end
	local w, h = surface.GetTextSize(AllText)
	if xAlign == TEXT_ALIGN_CENTER then
		CurX = x - w/2
	elseif xAlign == TEXT_ALIGN_RIGHT then
		CurX = x - w
	end

	if yAlign == TEXT_ALIGN_CENTER then
		y = y - h/2
	elseif yAlign == TEXT_ALIGN_BOTTOM then
		y = y - h
	end

	for k, v in pairs{...} do
		if IsColor(v) then
			CurColor = v
			continue
		elseif CurColor == nil then
			CurColor = Color_White
		end
		local Text = tostring(v)
		surface.SetTextColor(CurColor)
		surface.SetTextPos(CurX, y)
		surface.DrawText(Text)
		CurX = CurX + surface.GetTextSize(Text)
	end
end
