class Question < ActiveRecord::Base
    has_many :games

    def prompt
        TTY::Prompt.new 
    end

    def answer_layout
        answer_array = ["#{self.correct}", "#{self.false1}", "#{self.false2}", "#{self.false3}"]
        shuffle_array = answer_array.shuffle
        shuffle_array
    end

   def user_answer (answer_prompt)
         
        # binding.pry
        if answer_prompt == self.correct
            puts " "
            puts "congrats you earned #{points} points!"
            points
        elsif answer_prompt == self.false1 || self.false2 || self.false3
            puts " "
            puts "Not the right answer!"
            wrong_points
        end
    end

    def wrong_points
        points = 0
    end

end

