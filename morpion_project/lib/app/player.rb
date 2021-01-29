class Player
  attr_accessor :player_name, :player_token

  
  def initialize
    @player_name = gets_name
    @player_token = gets_token
	end

  def show_state
    puts "Le joueur #{@player_name} joue avec le token '#{@player_token}'"
  end

  private
  def gets_name
    print "Bonjour, quel est votre pseudo/nom pour cette partie ? "
    name = gets.chomp  
  end

  def gets_token
    
    print "Quel jeton souhaites-tu choisir ? (X/O) "
    token = gets.chomp.upcase
    while token != "X" && token != "O"
      puts "‼️  Erreur de saisie: soit X ou O."
      print "Quel jeton souhaites-tu choisir ? (X/O) "
      token = gets.chomp.upcase
    end
    return token
  end

end
