class Player
	attr_accessor :name, :manna, :blood
	
	def initialize (name, manna, blood)
		@name= name
		@manna= manna
		@blood= blood
	end

end

all_player = Array.new
desc = 'new'
while desc != 'exit'
	puts "
		# ============================== #
		# Welcome to the Battle Arena #
		# ------------------------------------------------- ---- #
		# Description: #
		# 1. type 'new' to create a character #
		# 2. type 'start' to begin the fight #
		# 3. type 'exit' to exit game #
		# ------------------------------------------------- ---- #
		# ------------------------------------------------- ---- #"
		STDOUT.flush  
		desc = gets.chomp

	if desc.eql? "new"
		puts " Who is the player ? "
		STDOUT.flush  
		player_name = gets.chomp
		temp = Player.new(player_name, 100, 40)
		all_player.push temp
	elsif desc.eql? "start"
		puts "All player are "
		
		 	all_player.each do |a|
		 		puts 'Name : ' + a.name + " , Blood = #{a.blood}" + " , Manna = #{a.manna}" 
		 		
		 	end
		    
		 puts "Who will attack?"
		 STDOUT.flush  
		 attacker = gets.chomp
		 all_player.each do |a|
		 	 	if a.name.include?attacker
		 			a.manna = a.manna - 10
			 		puts 'Name : ' + a.name + " , Blood = #{a.blood}" + " , Manna = #{a.manna}" 
			 		 		
			 	else
			 		a.blood = a.blood - 20
			 		puts 'Name : ' + a.name + " , Blood = #{a.blood}" + " , Manna = #{a.manna}" 
			 	end
			 	if a.blood.eql? 0 
			 		puts "Game Over"
				end			
		 end
	else
		puts "You type wrong keywoard"
	end	
end