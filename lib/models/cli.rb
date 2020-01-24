class Cli
    attr_reader :player, :question
    
    def prompt
        TTY::Prompt.new 
    end

    def start
        system("clear")
        puts " "
        puts "Welcome to FlatironFeud!".light_cyan
        puts " "
        puts "please enter your name".light_green
        # binding.pry
        @player = Player.create_player
        the_player
    end
    
    def the_player
        system("clear")
        puts " "
        puts "Welcome #{player.name.capitalize} lets play!!!"
        puts " "
        start_of_questions
    end
    
    def start_of_questions
        the_question = Question.all.sample
        puts " "
        answer_prompt = question_prompt(the_question)
        question_points = the_question.user_answer(answer_prompt)
        #binding.pry
        add_score(question_points)
        print_score
        ask_continue
    end
    
    def question_prompt(the_question)
        prompt.select("#{the_question.question} For #{the_question.points} points.".light_magenta, the_question.answer_layout)
    end
    
    def add_score(question_points)
        core = @player.score + question_points
        @player.update(score: core)
    end
    
    def print_score
        puts " "
        puts "#{player.name.capitalize}, you now have #{player.score} points!".light_green
    end

    def ask_continue
        puts " "
        player_answer =  prompt.select("Would you like to play again?".light_yellow, %w(yes no))
        if player_answer == "yes".downcase
            system("clear")
            start_of_questions
        else 
            puts " "
            system("clear")
        end_of_game
        end
    end
    
    def end_of_game
        puts "Good job #{player.name.capitalize}, you earned a total of #{player.score} points during this playthrough.".light_green
        puts " "
        player_answer =  prompt.select("Would you like to save your game?".light_yellow, %w(yes no))
        if player_answer == "yes".downcase

        else 
            @player.update(score: 0)
            
        end
        puts "Thanks for playing FlatironFeud!!!".light_cyan
    end

end