class Player < ActiveRecord::Base
    has_many :games

    def self.prompt
        TTY::Prompt.new 
    end
    
    def self.create_player
        new_player = gets.chomp
        puts ""
        if Player.find_by(name:new_player)
            puts "Oh no looks like that name has already been used!".light_red
            puts ""
            player_answer =  prompt.select("Is this you?".light_magenta, %w(yes no))
                if player_answer == "yes"
                    Player.find_by(name:new_player)
                else 
                    puts "Please enter a new name:"
                    create_player
                end
        else 
            Player.create(name:new_player)
        end
    end
  
end