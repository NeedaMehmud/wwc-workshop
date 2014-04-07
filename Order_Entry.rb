require_relative 'order.rb'

def get_input(message)
	puts message
	return gets.chomp
end
#end of get_input method

STOP = 'QUIT' #have a stop flag
input = '' #initialize input to an empty string
order =  Order.new #order will be a list of items

while input.upcase !=STOP
	puts "\n> Enter a new item -- type QUIT to quit"
	item = Item.new
	
	input = get_input("> Enter the price:")
	if input.upcase == STOP
		next
	end
	item.price = input.to_f
	
	input = get_input(">Enter the description:")
	if input.upcase == STOP
		next
	end
	item.description = input
	
	order.items.push(item)
end

puts "\n*****************"
order.items.each_with_index do |item,i|
puts "Item #{i + 1} : #{item.description} -- #item.price}"
 end

puts "Subtotal: #{order.subtotal}"
puts "Tax: #{order.salestax}"
puts "Total: #{order.total}"