puts "________________Even Fibonacci numbers__________________"

def even_fib_nums stop
	r = []
	first = 0
	second = 1
	result = 0
	while result < stop	
		result = first + second
		if result % 2 == 0
			r << result
		end
		first = second
		second = result
	end
	r.inject(0){|sum, num| sum + num}
end


p "the sum of even valued terms is : #{even_fib_nums(4_000_000)}"