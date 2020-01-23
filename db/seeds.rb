Game.destroy_all
Question.destroy_all
Players.destroy_all





quest1 = Question.create(:question "What color is the sky?", :points 10, :true_a "Blue", :false1 "Red", :false2 "Green", :false3 "Yellow")
quest2 = Question.create(:question "How long is a footlong?", :points 10, :true_a "1 foot", :false1 "2 feet", :false2 "3 feet", :false3 "4 feet")


player1 = Player.create(:name Gabriel)


game2 = Game.create(:player player1, :question quest1)