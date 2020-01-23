class Player < ActiveRecord::Base
    has_many :games

    def score
        score = self.points

        #score += 
    end
end