require 'date'
class Movie
	attr_accessor :title, :rating, :release_date, :duration
	attr_accessor :total_quantity, :number_checked_out
	def available?
		return_available > 0
	end
	
	def number_available
		return @total_quantity - @number_checked_out
	end
	
	def cost_to_rent
		if Date.today.year - @release_date.year <= 1
			return 5.00
		else
			return 2.00 	
		end
	end	
end
	
class Drama < Movie
	def cost_to_rent
		return super + 1
	end
end

class Horror < Movie
	def cost_to_rent
		if Date.today.month == 10 
			return super - 1
		else 
			return super
		end
	end
end
			
			
movie1 = Drama.new
movie1.title = "Pulp Fiction"
movie1.rating = "R"
movie1.release_date = Date.parse("04-04-1994")
movie1.duration = 154
movie1.number_checked_out = 2

movie2 = Horror.new
movie2.title = "Paranormal Activity"
movie2.rating = "R"
movie2.release_date = Date.parse("04-04-1991")
movie2.duration = 154
movie2.number_checked_out = 2

class Item
	attr_accessor # add properties here
	def initialize(arg) # this method takes one argument
		#this is a method definition
	end
end

STOP = '' # have a stop flag
order = [] # order will be a list of items
input = '' # initialize input to an empty string

while input != STOP
	# logic in here is to prompt user for input and
	#create items from that input. Add the items to 
	#the order array
end

order.each do |item|
	puts # output something aboout the item here
end

