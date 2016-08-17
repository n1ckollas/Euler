puts "_____________________Quadratic primes_____________________"

def is_prime num
	answer = true
	if num <= 1
		answer = false
	end

	dev = num - 1
	while dev > 1
		if num % dev == 0
			answer = false
		end
		dev -= 1
	end
	answer
end


def largest array
	largest = 0
	largest_in = []
	array.each do |x|
		if largest < x[0]
			largest = x[0]
			largest_in = x
		end
	end
	largest_in[3]
end


def product
	r = []
	a = -1000
	while a <= 1000
		b = -1000
		while b <= 1000
			n = 0
			prime_count = 0
			while is_prime((n*n + (a * n) + b).abs)
				prime_count += 1
				n +=1
				r << [prime_count, a, b, a*b]

			end	
			b += 1
		end
		a += 1
	end

	largest(r)

end





p "the product of coeficients a and b is #{product} "


