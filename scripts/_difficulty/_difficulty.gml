enum Difficulty {
	Easy,
	Medium,
	Hard,
}


function change_difficulty(difficulty) {
	switch (difficulty) {
		case "EASY":
			global.difficulty = Difficulty.Easy
			break
		case "MEDIUM":
			global.difficulty = Difficulty.Medium
			break
		case "HARD":
			global.difficulty = Difficulty.Hard
			break
	}
}


global.difficulty = Difficulty.Easy

