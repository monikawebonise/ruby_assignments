require 'csv'

#$ProductDetails=Hash.new
module ListSearch
	def List
		puts "//////////////////////////////////////////////////"
		File.open("inventory.txt").readlines.each do |line|
		fields=line.split(",")
		puts "#{fields[0]} #{fields[1]} #{fields[2]} #{fields[3]} #{fields[4]}"
		end
	end

	

	
	
		def SearchPrd
		puts "enter an id of the product you wanna search:"
		product_id=gets.chomp.to_i
		
		File.open("inventory.txt").readlines.each do |line|
			fields=line.split(",")
			if product_id==fields[0].to_i
				puts "Product Found!!! "
				if "#{fields[4]}"==0
					puts "Product out of stock"
				end
				puts "#{fields[0]} #{fields[1]} #{fields[2]} #{fields[3]} #{fields[4]}"
			
			
			end
		 end # do ends
		end
	
end	 

class ProductDetails
	include ListSearch
	attr_accessor :prd_id, :prd_category, :prd_name, :prd_cost, :prd_quantity
	def initialize#(prd_id, prd_category, prd_name, prd_cost, prd_quantity) 
		@prd_id=prd_id 
		@prd_category=prd_category
		@prd_name=prd_name
		@prd_cost=prd_cost
		@prd_quantity=prd_quantity
	end
	def to_s
	return @prd_id+","+@prd_category+","+@prd_name+","+@prd_cost+","+@prd_quantity
	end
end



class Shopkeeper
	#require 
	include ListSearch
	def Actions
	while true
	puts "What do you want to do ?"
	puts "Press 1:Adding a product"
	puts "Press 2:Updating a product"
	puts "Press 3:Searching a product"
	puts "Press 4: For deleting a product"
	puts "Press 5: For Viewing Inventory"
	puts "Press 6: For Exit"
	
	user_input = 0
	#while user_input!=5
	user_input=gets.chomp.to_i
	case user_input
			when 1
				puts "Enter the item id"
	    			id=gets.chomp
	    			puts "Enter the item category"
	    			category=gets.chomp
	    			puts "Enter the item name"
	    			name=gets.chomp
	    			puts "Enter the item cost"
	    			cost=gets.chomp
	    			puts "Enter the item quantity"
	   			quantity=gets.chomp
				prdObj=ProductDetails.new(id,category,name,cost,quantity)
				puts "product added"
				puts "the product is " + prdObj.to_s
				f=File.open("inventory.txt","a+")
				f.puts "id  category name cost quantity"
				f.puts prdObj
				f.close
	   			
			when 2
				
				puts "enter an id of the product you wanna edit:"
				product_id=gets.chomp
				File.open('temp.txt', 'w') do |output_file|
				   File.open('inventory.txt', 'r').each do |line|
					fields=line.split(",")
					if fields[0]==product_id
						puts "Enter the item category"
	    					category=gets.chomp
	    					puts "Enter the item name"
	    					name=gets.chomp
	    					puts "Enter the item cost"
	    					cost=gets.chomp
	    					puts "Enter the item quantity"
	   					quantity=gets.chomp
						output_file.puts product_id+","+category+","+name+","+cost+","+quantity
					else
						output_file.print line
					end
				    end # inner do end
				end # outer do end
					File.rename("temp.txt","inventory.txt")
			

			when 3
				productObj=ProductDetails.new
				productObj.SearchPrd
			when 4
				puts "Enter the product id to be deleted"
				id=gets.chomp
				File.open('temp.txt', 'w') do |output_file|
					File.open('inventory.txt', 'r').each do |line|
						fields=line.split(",")
						if !(fields[0]==id)
						output_file.print line
						end
					end
			
					end
			
				File.rename("temp.txt","inventory.txt")					
			
			when 5
				productObj=ProductDetails.new
				productObj.List


			when 6
				#puts "Exit"
				break
			else
				puts "Invalid"
	end # case ends
	end #while ends
	end #actions end

end # shopkeeper end


class Customer
	include ListSearch
	def CustomerActions
		while true
			puts "Main Menu"
			puts "1:List Product"
			puts "2:Search Product"
			puts "3:Buy Product"
			puts "4:Exit"
			puts " Enter your option"
			customer_input=0
			customer_input=gets.chomp.to_i
			case customer_input
				when 1
					productObj=ProductDetails.new
					productObj.List

				when 2
					productObj=ProductDetails.new
					productObj.SearchPrd

				when 3
					puts "Enter the product_id of the product you want to buy"
					prd_id=gets.chomp
					File.open('temp.txt', 'w') do |output_file|
					File.open('inventory.txt', 'r').each do |line|
					fields=line.split(",")
					if fields[0]==prd_id
						if fields[4].to_i!= 0
						orders_file=File.open('orders.txt', 'a+')
						puts "Enter your name: "
						customer_name=gets.chomp
						puts "Enter your Credit Card number:"
						credit_card_number=gets.chomp
						puts "Enter your cvv number"
						cvv=gets.chomp
						orders_file.print prd_id+" "+customer_name+" "+credit_card_number+" "+cvv+"\n"
						orders_file.close
						quantity=fields[4].to_i-1
						output_file.puts fields[0]+","+fields[1]+","+fields[2]+","+fields[3]+","+quantity.to_s
						else
						puts "out of stock"
						end
					else
					output_file.puts line
					end
					end #do end
					end #do end
					File.rename("temp.txt","inventory.txt")
				when 4
					puts "Exit"
					break
				else 
					puts "Invalid Entry"

			end # case ends
		end #while ends
end
end

	while true
	puts "Welcome User!!"
	puts "You Are : 1: Admin 2: Customer 3: Exit"
	user=0
	#while user!=3
	user=gets.chomp.to_i	
	case user
	 	when 1
	 		shopkeeper1=Shopkeeper.new
			shopkeeper1.Actions
		when 2
			customer1=Customer.new
			customer1.CustomerActions
			
		
		when 3 
			puts "exit"
			break
			
		else 
			puts "Invalid Input"
	end


	end



