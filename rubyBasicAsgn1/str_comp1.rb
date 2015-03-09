puts "Enters the Stings to compare:"
	ARGV.each do|a|
 	puts "Argument: #{a}"
 	end
if(ARGV[0]==ARGV[1])
 puts "Entered Strings are Equal"
else
	puts "Not equal"
end
