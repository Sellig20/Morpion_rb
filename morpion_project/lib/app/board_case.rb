require_relative 'player'

class BoardCase
	attr_accessor :symbol

	def initialize
	@symbol = @player_token
	end
end
