require_relative 'game'
require_relative 'board'
require_relative 'player'


board = Board.new
player1 = Player.new('Player_1', x = nil )
player2 = Player.new('Player_2',x = player1.token)
game = Game.new(player1,player2,board)
game.switch_player
board.populate_display
until game.over?
  game.switch_player
  game.play_turn
end