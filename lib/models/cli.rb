class Cli 
attr_reader :player 

def initialize(player)
    @player = player
end

def menu(play)
    puts "welcome #{self.player} are you ready to play?"
end


end 