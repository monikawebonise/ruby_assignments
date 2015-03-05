puts "Enter the first operand"
	operand1=gets.chomp
puts "Enter the second operand"
	operand2=gets.chomp
puts "Enter the operation" #whether end should be put or not
	operator1=gets.chomp
result=operand1.to_i.send operator1,operand2.to_i
puts result

