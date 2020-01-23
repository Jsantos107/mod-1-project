Game.destroy_all
Question.destroy_all
Player.destroy_all





question1 = Question.create(question: "What color is the sky?", points: 10, true_a: "Blue", false1: "Red", false2: "Green", false3: "Yellow")
question2 = Question.create(question: "How long is a footlong?", points: 10, true_a: "1 foot", false1: "2 feet", false2: "3 feet", false3: "4 feet")
question3 = Question.create(question: "Rick Astleys's never gonna:", points: 10, true_a: "All of these", false1: "Give you up", false2: "Let you down", false3: "Run around and desert you")

# player1 = Player.create(:name Gabriel)


# game2 = Game.create(:player player1, :question quest1)