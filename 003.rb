puts "________________Largest prime factor__________________"


def is_prime(num)
	original = num
	divisible = num-1
	prime = true

	while divisible > 1 

		if original % divisible == 0
			prime = false
		end
		divisible -= 1

	end
	prime
end

def largest_prime_factor_of num
	
	x = 2
	largest = 0
	while true

		if num == 1
			return largest
		end


		if is_prime x
			if num % x == 0
				if x > largest
					largest = x
				end

				num =  num / x
				
				x = 2
			else
				x += 1
			end
		else
			x +=1 
		end

	end

	
end

puts "the largest prime factor is :  #{largest_prime_factor_of(600851475143)}" 