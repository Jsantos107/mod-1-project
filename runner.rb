require_relative 'config/environment'
######MyFeud game!######

##Welcome page.##
puts "Welcome to MyFeud! \n"
puts "please enter your name"

## getting new player##
new_player = gets.chomp

Player.create(name:new_player, points: 0)

welcome = Cli.new(new_player)

welcome.menu

##Begin game##
quest1 = Question.create(question: "What color is the sky?", points: 10, true_a: "Blue", false1: "Red", false2: "Green", false3: "Yellow")

puts "#{quest1.question} For #{quest1.points} points."

quest1.question_layout 
answer = quest1.answer 
score = quest1.add_points(answer)
score
# quest1.score (new_player)



binding.pry 
0