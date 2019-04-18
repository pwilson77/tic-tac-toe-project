require_relative 'game'
require_relative 'board'
require_relative 'player'
require_relative 'game_cycle'
include Game_cycle

board = Board.new
player1 = Player.new('Player_1', x = nil,board )
player2 = Player.new('Player_2',x = player1.token,board)
game_object = Game.new(player1,player2,board)
game_cycle(game_object,board)
