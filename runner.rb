require_relative 'config/environment'



quest1 = Question.create(question: "What color is the sky?", points: 10, true_a: "Blue", false1: "Red", false2: "Green", false3: "Yellow")








puts "Welcome to MyFeud!"
puts "please enter your name"
Player.new_player

puts "#{quest1.question} For #{quest1.points} points."
#quest1.print_random_answer_choices
quest1.test1
quest1.answer



binding.pry 
0