class Game

  attr_reader :player_1, :player_2, :board, :current_player

  def initialize(player_1,player_2,board)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
    @current_player = @player_1
  end

  def play_turn
    location = @current_player.get_location(current_player.name)
    board.update_field_values(current_player.token, location)
    current_player.add_cell(location)
    @board.populate_display
  end

  def switch_player
    @current_player == @player_1  ? @current_player = @player_2 : @current_player = @player_1
  end

  def over?
    win_conditions = [[1,2,3], [4,5,6], [7,8,9],
                      [1,4,7], [2,5,8], [3,6,9],
                      [1,5,9], [3,5,7]]

    win_conditions.each do |condition|
      if (condition - current_player.cells_chosen).empty?
        puts "#{current_player.name} wins!"
        return true
      end
    end
    if board.board_values.none? { |value| value == " " }
      puts "Tie game, no winners!"
      return true
    end
    false
  end

  # until game.over?
  #   game.switch_player
  #   game.play_turn
  # end

end