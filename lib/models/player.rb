class Player < ActiveRecord::Base
    has_many :games


    def self.new_player
        Player.create(name: gets.chomp,points: 0)
    end



    def add_points

    end

end