class Cli
    attr_reader :player, :question 

    def initialize(player, question)
        @player = player
        @question = question
    end
    
    def self.find_player 
        new_player = gets.chomp
        
        player = Player.create(name:new_player)
        
        player
    end
    def self.start
        puts "Welcome to MyFeud!"
        puts " "
        puts "please enter your name"

        player = find_player
        # new_player = gets.chomp
        
        # player = Player.create(name:new_player)
        
        puts "Welcome #{player.name} lets play!!!" + "\n"
        
        puts " "
        question
    end
    
    def self.question
        quest1 = Question.all.sample
        puts "#{quest1.question} For #{quest1.points} points."
        quest1.question_layout 
        quest1.user_answer
        binding.pry
        # point = 0 

        # if quest1 > 0
        #     player
        # else 
        #     puts "fuck"
        # end
    end

    # def quest
    #     add_points
    # end

    # def add_points

    #     end
    
    
end