require_relative 'board_case'
require_relative 'player'

class Board
	attr_accessor :array_board, :count_turn
		
	def initialize
		@case1 = BoardCase.new("A1")
		@case2 = BoardCase.new("A2")
		@case3 = BoardCase.new("A3")
		@case4 = BoardCase.new("B1")
		@case5 = BoardCase.new("B2")
		@case6 = BoardCase.new("B3")
		@case7 = BoardCase.new("C1")
		@case8 = BoardCase.new("C2")
		@case9 = BoardCase.new("C3")
		@array_board = [@case1,@case2,@case3,@case4,@case5,@case6,@case7,@case8,@case9]
	end

	def play_turn(case_played,symbol)
		puts "A ton tour, #{name} !"
		puts "Ou veux-tu poser ton premier pion ?"
		print "> "
		case_played = gets.chomp
		case case_played
		when @case1
			if @case1 == "X" || @case1 == "O"
				puts "Desolee ! La case est deja prise"
			else
				puts @case1 = symbol
			end
		when @case2
			if @case2 == "X" || @case2 == "O"
				puts "Desolee ! La case est deja prise"
			else
				puts @case2 = symbol
			end
		when @case3
			if @case3 == "X" || @case3 == "O"
				puts "Desolee ! La case est deja prise"
			else
				puts @case3 = symbol
			end
		when @case4
			if @case4 == "X" || @case4 == "O"
				puts "Desolee ! La case est deja prise"
			else
				puts @case4 = symbol
			end
		when @case5
			if @case5 == "X" || @case5 == "O"
				puts "Desolee ! La case est deja prise"
			else
				puts @case5 = symbol
			end
		when @case6
			if @case6 == "X" || @case6 == "O"
				puts "Desolee ! La case est deja prise"
			else
				puts @case6 = symbol
			end
		when @case7
			if @case7 == "X" || @case7 == "O"
				puts "Desolee ! La case est deja prise"
			else
				puts @case7 = symbol
			end
		when @case8
			if @case8 == "X" || @case8 == "O"
				puts "Desolee ! La case est deja prise"
			else
				puts @case8 = symbol
			end
		when @case9
			if @case9 == "X" || @case9 == "O"
				puts "Desolee ! La case est deja prise"
			else
				puts @case9 = symbol
			end
		end
	end

	def victory?(board)
		if (@case1 == 'X' && @case2 == 'X' && @case3 == 'X') || ( @case1 == 'O' && @case2 == 'O' && @case3 == 'O')		
			puts "VICTORY"
			return true
		elsif (@case4 == 'X' && @case5 == 'X' && @case6 == 'X') || (@case4 == 'O' && @case5 == 'O' && @case6 == 'O')
			puts "VICTORY"
			return true
		elsif (@case7 == 'X' && @case8 == 'X' && @case9 == 'X') || (@case7 == 'O' && @case8 == 'O' && @case9 == 'O')
			puts "VICTORY"
			return true
		elsif (@case1 == 'X' && @case4 == 'X' && @case7 == 'X') || (@case1 == 'O' && @case4 == 'O' && @case7 == 'O')
			puts "VICTORY"
			return true
		elsif (@case2 == 'X' && @case5 == 'X' && @case8 == 'X') || (@case2 == 'O' && @case5 == 'O' && @case8 == 'O')
			puts "VICTORY"
			return true
		elsif (@case3 == 'X' && @case6 == 'X' && @case9 == 'X') || (@case3 == 'O' && @case6 == 'O' && @case9 == 'O')
			puts "VICTORY"
			return true
		elsif (@case1 == 'X' && @case5 == 'X' && @case9 == 'X') || (@case1 == 'O' && @case5 == 'O' && @case9 == 'O')
			puts "VICTORY"
			return true
		elsif (@case3 == 'X' && @case5 == 'X' && @case7 == 'X') || (@case3 == 'O' && @case5 == 'O' && @case7 == 'O')
			puts "VICTORY"
			return true
		else
			return false
		end
			
	end
end
