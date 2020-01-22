class Cli
    attr_reader :player 

    def initialize(player)
        @player = player
    end
    
    def menu
        puts "Welcome #{self.player} lets play!!!\n"
    end
    
    
end