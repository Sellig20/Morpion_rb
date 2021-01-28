require_relative 'game'

class Application
	attr_accessor :player_1, :player_2, :game

	def initialize
	@game = Game.new
		while @game.status == 'on going'
			@game.turn
			@game.game_end
			@game.new_round
		end
	end
end
