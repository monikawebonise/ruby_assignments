# copies string integer no. of times
str="abc"
str=str * 3
puts str


#comparison case sensitive
str1="abc"
str2="ABC"
ans=str1 <=> str2
puts ans

#inserting into strings
myString = "Paris in Spring"
puts myString
myString.insert 8, " the"

#reversing string
puts myString
revString=myString.reverse
puts revString
#=> "gnirpS eht ni siraP"

#substitution in string
myString = "Welcome to PHP Essentials!"
puts myString

substString=myString.gsub("PHP", "Ruby")
#=> "Welcome to Ruby Essentials!"
puts substString
