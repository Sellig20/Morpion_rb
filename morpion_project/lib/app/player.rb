class Player
	attr_accessor :welcome, :name, :token

	def initialize
	@welcome = welcome
	@name = receive_name
	@player_token = receive_token
	end

	def welcome
		puts"\n"
		puts"\n"
		puts"               * * * *B*I*E*N*V*E*N*U*E* * * *"
		puts"               *                             *"
		puts"               *       AU SUPER MORPION      *"
		puts"               *                             *"
		puts"               * * * *B*Y* *S*E*L*L*I*G* * * *"
		puts "\n"
	end

	def show_state
    puts "Le joueur #{@player. name} joue avec le jeton '#{@player_token}'"
  end

	def receive_name
		puts "Quel est votre nom/pseudo pour cette partie ?"
		print "> "
		@name1 = gets.chomp
		puts "Vous serez le joueur numero 1 !"
		puts "Et vous, quel est votre nom/pseudo pour cette partie ?"
		print "> "
		@name2 = gets.chomp
			if @name2 == @name1
				puts "Erreur, vous ne pouvez pas avoir le meme pseudo..."
				puts "Choisis un autre pseudo !"
				print "> "
				@name2 = gets.chomp
				puts "Vous serez le joueur numero 2 !"
			else
				puts "Vous serez le joueur numero 2 !"
			end
	end

	def receive_token
		puts "Quel symbole choisissez-vous ? Vous avez le choix entre X et O"
		print"> "
		@player_token1 = gets.chomp
			if @player_token1 == "X" || @player_token1 == "O"
				puts "Et vous, quel symbole voulez-vous ?"
				print "> "
			elsif @player_token1 != "X" || @player_token1 != "O"
				puts "Erreur ! Le symbole choisi n'existe pas"
				puts "Choisissez un autre symbole !"
				print "> "
				@player_token1 = gets.chomp
			end
		@player_token2 = gets.chomp
		while @player_token2 != "X" || @player_token2 != "O"
			if (@player_token2 == "X" || @player_token2 == "O") && (@player_token2 != @player_token1)
				puts "Maintenant que vous avez chacun un symbole, nous pouvons proceder au jeu"
				return @player_token	
			elsif @player_token1 == @player_token2
					puts "Erreur ! vous avez le meme symbole"
					puts "Choisissez un autre symbole"
					print "> "
					@player_token2 = gets.chomp
			elsif (@player_token2 != "X" || @player_token2 != "O")
					puts "Erreur ! Le symbole choisi n'existe pas"
					puts "Choisissez un autre symbole !"
					print "> "
				@player_token2 = gets.chomp
			end
			end
		end
end
