require_relative 'board'
require 'views/show'
require_relative 'player'

class Game
	attr_accessor :current_player, :array_player, :status, :board

  def initialize
	@player1 = Player.new
	@player2 = Player.new
	@array_player = [@player1, @player2]
	@status = 'on going'

	@player1.show_state
	@player2.show_state
	@board = Board.new

	Show.new.show_board
  end

  def turn
		i = 0
		while @status == 'on going' && i < 9
			@current_player = @array_player[i % 2]
			@board.play_turn(@board, @current_player)

			Show.new.show_board(@board)

			if @board.victory?(@board)
				@status = 'winner'
					break
			end

			i = i + 1
			end
		end

  def new_round
  	puts "On repart pour un tour ? oui / non"
		print "> "
		answer = gets.chomp
		while (answer != "oui") || (answer != "non")
			if answer == "oui"
				puts "Et c'est repartiiii !"
				@board = Board.new
				@status = "on going"
				Show.new.show_board(@board)
				break
			elsif answer == "non"
				puts "Ok ! Bonne journee a toi moussaillon !"
				exit
			end
			
			(answer != "oui") || (answer != "non")
			puts "Mauvaise reponse ! oui ou non ?"
			print "> "
			answer = gets.chomp
			end
		end

  def game_end
		if @status == "on going"
			puts "Maaaaaatch nul ! Aucun vainqueur..."
		elsif
			puts "Felicitations #{current_player.player_name} !!!!"
		end 
	end
end
