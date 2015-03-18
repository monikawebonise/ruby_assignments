puts "Enter the path of file"
path=gets.chomp
			classVariableCount=0
			instanceVariableCount=0
			globalVariableCount=0
	if path=~/(.rb)$/
		puts "A ruby File"
		File.open("#{path}").readlines.each do |line|
		 	if      /class/.match(line)
				puts "Class Found"
				puts line
			
			elsif 	/^\s*@@/.match(line)
				puts "#{line}"
				classVariableCount=classVariableCount+1
			elsif 	/^\s*@\w/.match(line)
				puts "#{line}"
				instanceVariableCount=instanceVariableCount+1
			elsif  	/^\s*\$/.match(line)
				puts "#{line}"
				globalVariableCount=globalVariableCount+1									
			end
		end # do Ends
		puts "No. of classVariableCount=#{classVariableCount}"
		puts "instanceVariableCount=#{instanceVariableCount}"
		puts "globalVariableCount=#{globalVariableCount}"
	else
		puts "Not a ruby File"
	end


	





			

