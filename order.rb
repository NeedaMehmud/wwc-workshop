class Item
	attr_accessor :price, :descript
end
	
class Order
	attr_accessor :items

	def initialize
		@items = []
	end
	
	def subtotal
		subtotal = 0
		@items.each do |item|
			subtotal +=item.price
		end
		return subtotal
	end
	
	def salestax
		return 0.08 * subtotal
	end
	
	def total
		return salestax + subtotal
	end
end