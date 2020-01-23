class Player < ActiveRecord::Base
    has_many :games
    
    def self.create_player
        new_player = gets.chomp
        Player.create(name:new_player)
    end






    
end