
puts "_______________________Reciprocal cycles_________________"


def length_of_cycle array
	reciprocal_e = array.last
	idx = 0
	while idx < array.length
		if array[idx] == reciprocal_e
			return array[idx..array.length-2].length
		end
		idx += 1
	end
end

def reciprocal_c num
	remainders = []
	n = 1
	d = num
	r = 1
	remainders << n % d
	while true
		n = n * 10
		if n < d
			r = 0
			remainders << r
		else
			r = n % d
			if remainders.include?(r)
				remainders << r
				return remainders
			else
				remainders << r
			end
		end
	end
end

def longest_cycle num
	r = []
	longest = 0
	d = 0
	idx = 2
	while idx < num
		r << [length_of_cycle(reciprocal_c idx), idx]
		idx += 1
	end

	r.each do |x|
		if x[0] > longest
			longest = x[0]
			d = x[1]
		end
	end
	d
end

p "The longest recurring cycle is : #{longest_cycle(1000)}"

