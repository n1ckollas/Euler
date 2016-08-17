
puts "_______________Highly divisible triangular number______________"


def triangular_number
	
	triangular_num = 0
	x = 1
	while true
		factor_count = 0
		triangular_num += x
		y = triangular_num 
		while y > 0
			if triangular_num % y == 0
				factor_count +=1
				# p [triangular_num, factor_count] # just to see progress
				if factor_count == 500
					return triangular_num
				end
			end
			y-= 1
		end
	 x+=1
	end
end

# Warning!!!!!!!!!!
#  answer : 76576500
# "It took  55138.355325281 sec." ~ 15.31 hours



start = Time.now

p triangular_number

seconds  = Time.now - start
p  "It took  #{seconds} sec."