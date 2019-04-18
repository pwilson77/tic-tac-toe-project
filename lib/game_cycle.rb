module Game_cycle
    def game_cycle(game_obj)
        until game_obj.over?
            game_obj.switch_player
            game_obj.play_turn
        end
    end
end