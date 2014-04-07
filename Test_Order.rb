require 'minitest/autorun'
require_relative 'order.rb'

class Test_Order < MiniTest::Unit::TestCase
	def setup
			@order = Order.new
			@item1 = Item.new
			@item1.price = 2
			@item2 = Item.new
			@item2.price = 3
			@order.items.push(@item1)
			@order.items.push(@item2)
	end
	
	def test_subtotal_returns_sum_of_item_prices
		assert_equal 5, @order.subtotal
	end
	
	def test_salestax_should_be_eight_percent_of_subtotal
		assert_equal (0.08 * 5), @order.salestax
	end
	
	def test_total_should_be_sum_of_salestax_and_subtotal
		assert_equal (0.08 * 5) + 5, @order.total
	end
end