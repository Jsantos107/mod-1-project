class Question < ActiveRecord::Base
    has_many :games


    # def print_random_answer_choices
    #     answer_array = []
    #     just_answers = [:true_a, :false1, :false2, :false3]
    #     answer_array = self.select{|answer| self.include? == just_answers}
    #    answer_array.shuffle
    #    puts answer_array[0]
    #    puts answer_array[1]
    #    puts answer_array[2]
    #    puts answer_array[3]
    # end



    def test1
        answer_array = ["#{self.true_a}", "#{self.false1}", "#{self.false2}", "#{self.false3}" ]
        puts answer_array.shuffle
    end

    def answer
        player_a = gets.chomp.downcase.to_s 
        if player_a == self.true_a.downcase
            puts "congrats you earned 10 points"
        elsif player_a != self.true_a.downcase
            puts "Not the right answer!"
        else 
            puts "Invlaid input"
        end
    end



end