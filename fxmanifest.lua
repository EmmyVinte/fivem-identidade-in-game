fx_version 'adamant'
game 'gta5'

ui_page "nui/identidade.html"

client_scripts {
	"@vrp/lib/utils.lua",
	"client.lua",
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server.lua",
}

files {
	"nui/*.html",
	"nui/*.js",
	"nui/*.css",
	"nui/*.png",
	"nui/icons/*.svg",
}

