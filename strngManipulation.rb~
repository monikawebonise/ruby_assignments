$array = Array.new()

class Strng
	def str_manpulatn
		puts "Enter the string to be manipulated"
		original_str=gets.chomp
		manipulated_str=original_str.split ""
		puts "Length is #{original_str.length}"
		puts manipulated_str.join
		mon=manipulated_str
		

				#puts "in method"				
				#manipulated_str.each do |i|
					#if manipulated_str.index(i)%2==0
   					#manipulated_str.delete i
					#else puts "#{i}"
					#end
				#end
		for j in 0..mon.length
			for i in 0...manipulated_str.length
						
				if (i+1)%2==0
				manipulated_str.slice(i)
			
				else $array.push( mon[i])
				end
				
		
			end
		mon = $array.join
		puts mon
		#puts mon
				if mon.length==1
				break
				end
			
		$array = Array.new()
			
		end
		


	end
end

strng_obj=Strng.new
strng_obj.str_manpulatn

