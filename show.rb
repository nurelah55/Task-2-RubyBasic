 class Show

    def title

    	puts "
    	# ============================== #
    	# Welcome to the Battle Arena #
    	# ------------------------------------------------- ---- #
    	# Description: #
    	# 1 type 'new' to create a character #
    	# 2. type 'start' to begin the fight #
    	# ------------------------------------------------- ---- #
    	# Current Player: #
    	# - #
    	# * Max player 2 or 3 #
    	# ------------------------------------------------- ---- #"
    	STDOUT.flush  
    	city = gets.chomp  
    	
    end

end

show =Show.new
#puts "You Choose " + show.title
temp =show.title

	n=0
	while temp = "new" do
    if n.eql? 2
    
        puts "You Have added 3 players"
    else
      puts "Put Player name here "
      player = gets.chomp
      puts " The name of palyer is "+player
    end
	  	    n = n + 1

	end





