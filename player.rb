class Player
	attr_accessor :name, :grade
	def initialize
		@name="hero"
		@grade=4
	end

end

player = Player.new
player.name
player.name = "Nur elah"
