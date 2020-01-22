class Question < ActiveRecord::Base
    has_many :games

    def question_layout
        answer_array = ["#{self.true_a}", "#{self.false1}", "#{self.false2}", "#{self.false3}" ]
        puts answer_array.shuffle
    end

    def answer
        player_a = gets.chomp.downcase.to_s 

        if player_a == self.true_a.downcase
            print "congrats you earned 10 points"
        elsif player_a != self.true_a.downcase
            print "Not the right answer!"
        else 
            print "Invlaid input"
        end

    end

    def add_points(answer)
        point = 0
        if answer == self.true_a 
            point += self.points
        end
        point
    end

    # def score (player)
    #     score += player.points 
    # end

end