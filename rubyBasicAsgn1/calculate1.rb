puts "Enter operands and operator :"
ARGV.each do|a|
  puts "Argument: #{a}"
  end
def calculate()
	result=ARGV[0].to_i.send ARGV[1], ARGV[2].to_i
	#1.+(2)
	#1 + 2
	#result=ARGV[1].to_i + ARGV[2].to_i
    	puts result
	end
calculate()

