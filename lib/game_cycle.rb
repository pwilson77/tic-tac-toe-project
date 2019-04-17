module Game_cycle
    def game_cycle
        until game.over?
            game.switch_player
            game.play_turn
        end
    end
end