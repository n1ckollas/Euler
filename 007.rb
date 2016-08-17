puts "________________10001st prime__________________"


def is_prime? num
	devided_by = num - 1
	prime = true
	if num == 1 
		prime = false
		return prime
	end
	while devided_by > 1
		if num % devided_by == 0
			prime = false 
		end
		devided_by -=1 
	end
	prime
end

def nth_prime num
	prime_count = 0
	n = 1
	while prime_count < num
		if is_prime?(n)
			prime_count += 1 
			if prime_count == num
				return n
			end
		end
		n += 1
	end
end

#!!! on core i5 this proces takes 702.7 seconds to complete
# the answer is 104743
p nth_prime 10001