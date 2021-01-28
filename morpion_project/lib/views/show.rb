class Show
	attr_accessor :board

	def initialize
	end

  def show_board(board)
   #Show.new.show_board(instance_de_Board)
   puts row = ["   " "|" "   " "|" "   "]
   puts separator = "-----------"
   puts row
   puts separator
   puts row
 end
end
