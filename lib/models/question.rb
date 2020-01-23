class Question < ActiveRecord::Base
    has_many :games

    def question_layout
        answer_array = ["#{self.true_a}", "#{self.false1}", "#{self.false2}", "#{self.false3}"]
        shuffle_array = answer_array.shuffle
        puts " "
        puts shuffle_array[0]
        puts shuffle_array[1]
        puts shuffle_array[2]
        puts shuffle_array[3]
        puts " "
    end
    def user_answer
        player_a = gets.chomp.downcase.to_s 
        if player_a == self.true_a.downcase
            p "congrats you earned 10 points"
            add_points
        elsif player_a == self.false1.downcase
            p "Not the right answer!"
        elsif player_a == self.false2.downcase
            p "Not the right answer!"
        elsif player_a == self.false3.downcase
            p "Not the right answer!"
        else 
            puts "Please pick one of the above answers!"
            user_answer
        end
       # puts " "
    end

    def add_points
        point = 0
            point += self.points
        
        # binding.pry
    end

    # def score (player)
    #     score += player.points 
    # end

end
# quest1 = Question.create(question: "What color is the sky?", points: 10, true_a: "Blue", false1: "Red", false2: "Green", false3: "Yellow")
