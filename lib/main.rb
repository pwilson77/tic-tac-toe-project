require_relative 'game'
require_relative 'board'
require_relative 'player'
require_relative 'game_cycle'

board = Board.new
player1 = Player.new('Player_1', x = nil,board )
player2 = Player.new('Player_2',x = player1.token,board)
game = Game.new(player1,player2,board)
game.switch_player
board.populate_display
include Game_cycle
# until game.over?
#   game.switch_player
#   game.play_turn
# end