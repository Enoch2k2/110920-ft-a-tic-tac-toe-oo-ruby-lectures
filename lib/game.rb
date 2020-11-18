# this game class will contain the flow of the game

class Game
    attr_accessor :player_1, :player_2

    def begin
        puts "Welcome to Tic Tac Toe!"
        setup_player_1
        setup_player_2
    end

    # ask the player name and token and instantiate the player
    def setup_player_1
        name = ask_for_name("Player 1")

        puts "Hello #{name}! What token would you want to be? Type 'X' to be the x token and go first, otherwise you will be 'O'"
        input = gets.chomp

        if input.downcase == "x"
            token = "X"
        else
            token = "O"
        end

        self.player_1 = Player.new(name, token)
    end

    # ask the player name and token and instantiate the player
    def setup_player_2
        name = ask_for_name("Player 2")
        if self.player_1.token.downcase == "x"
            token = "O"
        else
            token = "X"
        end
        
        self.player_2 = Player.new(name, token)
    end

    def ask_for_name(player)
        puts "#{player}, what is your name?"
        gets.chomp
    end
end