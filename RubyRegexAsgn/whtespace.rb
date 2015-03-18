puts "Enter the string"
input=gets.chomp
	
	
		if 	/\s/.match("#{input}")
			puts "has white spaces"
		else
			puts "no white spaces"
		end
