class Player
    attr_reader   :name, :token, :cells_chosen
  
    def initialize(name,selected)
      @selected_token = selected
      @name = welcome_player(name)
      @token = get_token(@name)
      @cells_chosen = []
    end
  
    def add_cell(cell_number)
      @cells_chosen.push(cell_number)
    end

    def welcome_player(player)
      player_name = get_name(player)
    end
  
    def get_name(player)
      puts "Welcome, #{player}, what is your name?"
      gets.chomp
    end
  
    def get_token(player_name)
      if @selected_token.nil?
        puts "Thanks #{player_name}! What token would you like, 'X' or 'O'?"
        token = gets.chomp.upcase
        while token != "X" && token != "O"
          puts "That is not a valid entry, please select 'X' or 'O'."
          token = gets.chomp.upcase
        end
        @selected_token = token
      else
        token = @selected_token == "X" ? "O" : "X"
        puts "#{player_name}, your token will be '#{token}'"
      end
      token
    end
end