require_relative 'board'
require 'view/show'
require_relative 'player'


class Game
    attr_accessor :current_player, :status, :ary_player, :board

  def initialize
    # création 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @player_1 = Player.new
    @player_2 = Player.new
    @ary_player = [@player_1,@player_2]
    @status = 'on going'

    # check du type de token et switch
    if @player_1.player_token == @player_2.player_token
      puts "? je switch les tokens parce que t'as choisi les memes..."
      if @player_1.player_token == 'X'
        @player_2.player_token = 'O'
      elsif @player_1.player_token == 'O'
        @player_2.player_token = 'X'
      end
    end
    @player_1.show_state
    @player_2.show_state
    # init du damier
    @board = Board.new
    # affiche le damier
    Show.new.show_board(@board)
  end

  def turn

    i=0
    while @status == 'on going' && i < 9
      @current_player = @ary_player[i % 2] # joueur alternativement index 0 ou 1
      @board.play_turn(@board, @current_player)
      
      # affiche tableau en-cours
      Show.new.show_board(@board)

      # check winner
      if @board.victory?(@board)
        @status = 'winner'
        break
      end

      i = i + 1 # compteur de tour
    end
  end

  def new_round
    print "Voulez-vous faire une nouvelle partie (O/N) ? "
    choice = gets.chomp.upcase
    while choice != 'O' || choice != 'N' 
      if choice == 'O'
        @board = Board.new
        @status = "on going"
        puts '-' * 20
        puts "Commençons une nouvelle partie !"
        Show.new.show_board(@board)
        break
      elsif choice == 'N'
        puts "Ok, salut, a bientot!!!"
        exit
      end

      print "Aucun sens ! Voulez-vous faire une nouvelle partie (O/N) ? "
      choice = gets.chomp.upcase

    end 
    puts choice
    p @status
  end

  def game_end
    if @status == 'on going'
      puts "Maaaaaaaaaaaatch nul !!"
    elsif @status == 'winner'
      puts "Felicitatiiiionnns #{@current_player.player_name} !!!"
    end
  end    

end
