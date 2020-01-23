class Cli
    attr_reader :player, :question
    
    def start
        puts " "
        puts "Welcome to FlatironFeud!"
        puts " "
        puts "please enter your name"
        @player = Player.create_player
        puts " "
        puts "Welcome #{player.name.capitalize} lets play!!!" + "\n"
        puts " "
        question
    end
    
    def question
        quest1 = Question.all.sample
        puts " "
        puts "#{quest1.question} For #{quest1.points} points."
        quest1.question_layout 
        score = quest1.user_answer
        add_points(score)
        score_prompt
        continue_prompt
        #binding.pry
    end


    def add_points(score)
        player.score += score
    end
    
    def score_prompt
        puts " "
        p "#{player.name.capitalize}, you now have #{player.score} points!"
    end
    
    def continue_prompt
        puts " "
        puts "Would you like to play again? yes or no"
        player_answer = gets.chomp.downcase
        if player_answer == "yes".downcase
            question
        else 
            puts " "
            puts "Good job #{player.name.capitalize}, you earned a total of #{player.score} points during this playthrough."
        end
    end

end