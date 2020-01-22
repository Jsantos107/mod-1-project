require_relative './config/environment'

puts "Welcome to MyFeud!"
puts "please enter your name"

new_player = gets.chomp

new_guy = Player.new(name:new_player, points: 0)

welcome = Cli.new(player: Player.name)

welcome.menu(Player.name)


quest1 = Question.create(question: "What color is the sky?", points: 10, true_a: "Blue", false1: "Red", false2: "Green", false3: "Yellow")

puts "#{quest1.question} For #{quest1.points} points."
quest1.game1

#restclient
#tty prompt 


binding.pry 

0