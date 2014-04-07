for i in (1..100)
    if i % 3 == 0  && i % 5 == 0 
	#Module means divide
	
		puts "fizzbuzz"
	elsif i  % 3 == 0
	
	# -- means: Is this equal to?
	
		puts "fizz"
	elsif i % 5 == 0
		puts "buzz"
	else
		puts i 
	end
end