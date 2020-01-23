class Cli
    attr_reader :player, :question

    

    
    def start
        puts "Welcome to MyFeud!"
        puts " "
        puts "please enter your name"
        @player = Player.create_player
        puts "Welcome #{player.name} lets play!!!" + "\n"
        puts " "
        question
    end
    
    def question
        quest1 = Question.all.sample
        puts "#{quest1.question} For #{quest1.points} points."
        quest1.question_layout 
        score = quest1.user_answer
        add_points(score)
        binding.pry
    end

    def add_points(score)
        player.score += score
    end
    
    
end