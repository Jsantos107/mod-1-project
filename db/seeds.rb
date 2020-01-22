player1 = Player.create(name: "Jorge", points: 0)

quest1 = Question.create(question: "What color is the sky?", points: 10, true_a: "Blue", false1: "Red", false2: "Green", false3: "Yellow")

Game.create(player: player1.id, score: player1.points )