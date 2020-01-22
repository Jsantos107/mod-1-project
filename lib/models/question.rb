class Question < ActiveRecord::Base 
    has_many :games

    def game1
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
# quest1 = Question.creat(question: "What color is the sky?", points: 10, true_a: "Blue", false1: "Red", false2: "Green", false3: "Yellow")

