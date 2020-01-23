class Question < ActiveRecord::Base
    has_many :games

    def question_layout
        answer_array = ["#{self.true_a}", "#{self.false1}", "#{self.false2}", "#{self.false3}"]
        shuffle_array = answer_array.shuffle
        puts " "
        puts shuffle_array[0..3]
        puts " "
    end

    def user_answer
        player_a = gets.chomp.downcase.to_s 
        if player_a == self.true_a.downcase
            p "congrats you earned #{points} points!"
            points
        elsif player_a == self.false1.downcase || self.false2.downcase || self.false3.downcase
            p "Not the right answer!"
            wrong_points
        else 
            puts "Please pick one of the above answers!"
            user_answer
        end
    end

    def correct_points
        point = 0
            point += self.points
            #  binding.pry
    end

    def wrong_points
        points = 0
    end

end

