// Update variables
boxWidth = sprite_get_width(spr_box) - 2*xBuffer
stringHeight = string_height(text) - 3

// Draw Textbox
draw_sprite(spr_box, 0, x, y)

// Draw text
draw_set_font(fnt_kenny)

if (charCount < string_length(text)) 
{
	charCount += 0.5
}

textPart = string_copy(text, 1, charCount)

// Draw the name
draw_set_halign(fa_center)
draw_text(x+boxWidth/2, y+yBuffer, name)

// Draw part of the text
draw_set_halign(fa_left)
draw_text_ext(x+xBuffer, y+stringHeight, textPart, stringHeight, boxWidth)