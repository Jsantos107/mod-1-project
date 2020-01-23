class Cli
    attr_reader :player, :question
    
    def prompt
        TTY::Prompt.new 
    end

    def start
        puts " "
        puts "Welcome to FlatironFeud!"
        puts " "
        puts "please enter your name"
        @player = Player.create_player
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
        add_score(question_points)
        print_score
        ask_continue

    end

    def question_prompt(the_question)
        prompt.select("#{the_question.question} For #{the_question.points} points.", the_question.answer_layout)
    end

    def add_score(question_points)
        @player.score += question_points
    end
    
    def print_score
        puts " "
        puts "#{player.name.capitalize}, you now have #{player.score} points!"
    end
    
    def ask_continue
        puts " "
        player_answer =  prompt.select("Would you like to play again?", %w(yes no))
        if player_answer == "yes".downcase
            start_of_questions
        else 
            puts " "
            puts "Good job #{player.name.capitalize}, you earned a total of #{player.score} points during this playthrough."
        end
    end

end