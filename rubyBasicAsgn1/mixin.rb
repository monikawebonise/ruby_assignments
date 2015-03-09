module A
    def add(a,b)
        a=a.to_f + b.to_f 
    	return a
    end
    def sub(a,b);puts "inside sub";return a-b
    end
    def mul(a,b,c); return a.to_f*b.to_f*c.to_f
    end
    def divide(a,b)
    a=a.to_f/b.to_f; 
    return a
    end
end

class Score
include A
    def get_percent
    puts "enter the total" ; ttl= gets;
    puts "enter the obtainted marks"
    total_mrks=gets.chomp ; 
    #total_mrks=add(mrks1,mrks2)
    #puts "total mrks is #{total_mrks}"
    percent=divide(total_mrks,ttl)  
    percent=percent * 100  
    #def display_score()
    puts "percent is #{percent}%"
    #end
end
end


class Interest
include A
def find_interest
    puts " enter the Principal Amount, Rate and Time(in years)"
    p=gets ;b= gets; c=gets 
    interest=mul(p,b,c); interest=interest/100;
    # def display_Interest()
    puts "Interest is #{interest}"
   # end
end
end

scoreobj=Score.new
scoreobj.get_percent
#scoreobj.display_score
interestobj=Interest.new
interestobj.find_interest
#interestobj.display_Interest



