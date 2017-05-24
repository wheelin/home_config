-- @param `language = true`: language being any one you choose.
local dont = {
  perl = true,
  yaml = true,
  markdown = true,
}

-- enable semantic highlighting
_SEMANTIC = true

-- semantic highlighting. NEED base16 themes to work!
events.connect(events.LEXER_LOADED, function (lang)
	if _SEMANTIC == false then return end

	buffer.edge_colour = buffer.property_int["color.base0A"]

	buffer.property['style.operator'] = 'fore:%(color.base0F)'
	buffer.property['style.function'] = 'fore:%(color.base08)'
	buffer.property['style.library'] = 'fore:%(color.base09)'
	buffer.property['style.identifier'] = 'fore:%(color.base0D)'
	buffer.property['style.number'] = 'fore:%(color.base0E)'
	buffer.property['style.constant'] = 'fore:%(color.base0A)'

	buffer.property['style.keyword'] = 'fore:%(color.base05)'
end)
