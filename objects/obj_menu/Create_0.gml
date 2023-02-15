enum MenuPage {
	Main,
	Settings
}
enum MenuElement {
	RunScript,
	ChangePage,
	Slider,
	Shift,
	Toggle,
	Input
}

main_page = create_menu(
	[
		["PLAY",		MenuElement.RunScript,		start_game				],
		["SETTINGS",	MenuElement.ChangePage,	    MenuPage.Settings	    ],
		["EXIT",		MenuElement.RunScript,		exit_game				],
	]
)
settings_page = create_menu(
	[
		["DIFFICULTY",	MenuElement.Shift,			change_difficulty,		global.difficulty,	["EASY", "MEDIUM", "HARD"]	],
		["BACK",		MenuElement.ChangePage,	    MenuPage.Main,		    undefined,			undefined					],
	]
)

menu_pages = [main_page, settings_page]
menu_page = 0
menu_inputting = false

for (var i = 0; i < array_length(menu_pages); i++) {
	menu_selected_elements[i] = 0
}
