
puts "_______________________1000-digit Fibonacci number_________________"

def nthdigitF
	
	first = 0
	second = 1
  index = 2
	while true
		result = first + second
		first = second
		second = result
		if result.to_s.length == 1000
			return index
		end
		index += 1
	end

end

p "index of the first term to contain 1000 digits is : #{nthdigitF}"

