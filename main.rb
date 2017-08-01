require './game'
require './player'
require './question'

player_one = Player.new "Jack"
player_two = Player.new "Jill"
game = Game.new(player_one, player_two)
game.start_game