Game.destroy_all
Question.destroy_all
Players.destroy_all





quest1 = Question.create(:question "What color is the sky?", :points 10, :true_a "Blue", :false1 "Red", :false2 "Green", :false3 "Yellow")

player1 = Player.create(:name Gabriel, :points 0)


game2 = Game.create(:player player1, :question quest1)