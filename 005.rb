
puts "________________Smallest multiple__________________"

def smallest_multiple_by num1, num2
	divisable = 1
	while true

		is_divisable = true
		n = 1
		while n <= num2
			if divisable % n != 0
				is_divisable = false
			end
			n += 1
		end

		if is_divisable
			return divisable
		end

		divisable += 1
	end
end

# !!!!!!!! Warning answer 232792560 on intel core i5  
# takes 257.5 seconds ~(5 min)  to process

p smallest_multiple_by(1,20)