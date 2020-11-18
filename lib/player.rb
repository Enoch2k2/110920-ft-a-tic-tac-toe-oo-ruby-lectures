class Player
    attr_accessor :name, :token

    def initialize(name, token)
        self.name = name
        self.token = token
    end
end

# player_1 = Player.new("Bob", "X")
# player_2 = Player.new("Sarah", "O")