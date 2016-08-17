
puts "________________Summation of primes__________________"

def is_prime? num
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

def sum_of_primes_till num
	sum = 0
	n = 0 
	while n <= num
		if is_prime?(n)
			sum += n 
		end
		n += 1
	end
	sum
end

# Warning!!!!! on core i5 this function took more than a day to proces

# the output is 142913828922
# "It took  110254.049171 sec." ~ 30.62 hours

start = Time.now

p sum_of_primes_till 2000000

seconds  = Time.now - start
p  "It took  #{seconds} sec."

