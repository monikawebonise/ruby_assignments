puts "Enter the Sentences"
input1=gets
	input2=input1[/^\s*\w+\s+\w+\s+\w+/]
		input2=input2.split()
		puts input2[-1]


#second Approach without regular expression
puts "Enter the sentences"
input = gets
values = input.split(" ")

# Display each value to the console.
index=0
values.each do |value|
    index=index+1
	if index==3
		puts "Third term is '#{value}'"
		        break
	end
end
