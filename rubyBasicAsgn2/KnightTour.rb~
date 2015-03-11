$N=8
$xMove = Array[2, 1, -1, -2, -2, -1,  1,  2]
$yMove = Array[1, 2,  2,  1, -1, -2, -2, -1]
class KnightsTour
	def isSafe(x, y, sol)

    		if ( x>=0 && x<8 && y>=0 && y<8 && sol[x][y] == -1)
    			return true
		else    		
		return false
		end
		
 	end

	def solveKTUtil(x,y,movei,sol)

   
   		if (movei == 64)
			print "\n"
			for i in 0..7
				
				for j in 0..7
				print "#{sol[i][j]}\t"
				end
				print "\n"
			end
       			return true
		end
 
			   
   		for k in 0..7
   
       			next_x = x + $xMove[k]
       			next_y = y + $yMove[k]
       			if (isSafe(next_x, next_y, sol))
       
         			sol[next_x][next_y] = movei
         				if (solveKTUtil(next_x, next_y, movei+1, sol) == true)
             				return true
		 			else
             				sol[next_x][next_y] = -1 #backtracking
					end
         		end
		end
	
   
 
   		return false
	end

	def solveKT(x,y)
	
		sol=Array.new(8){Array.new(8,-1)}  #x = Array.new(10) { Array.new(20) }
	        puts sol
		#sol[0][0]  = 0
 
    
    		  if (solveKTUtil(x, y, 1, sol) == false)
    
    		      puts "Solution does not exist"
      		      return false
                  
    		
        	 end
 
    		return true
     	end
end



knight=KnightsTour.new
puts "Enter the grid size:N*N"
n=gets.chomp.to_i
puts "Enter the intial x-position"
x=gets.chomp.to_i
puts "Enter the intial y position"
y=gets.chomp.to_i 
knight.solveKT(x,y)

	
