module calculate
   def  add(a,b)
        return(a+b)
	end
   def  subtract(a,b)
	return(a-b)
        end
   def  multiply(a,b)
	return(a*b)
   	end
   def  divide(a,b)
	return(a/b)
   	end
end

class Score
include calculate

   def s1
   end
end

class Interest
include calculate

   def s1
   end
end

scoreCalculate=Score.new
scoreCalculate.add
scoreCalculate.sub
scoreCalculate.multiply
scoreCalculate.divide

interestCalculate=Interest.new
interestCalculate.add
interestCalculate.sub
interestCalculate.multiply
interestCalculate.divide


