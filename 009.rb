
puts "________________Pythagorean triplet__________________"

def pytha_triplet num
	a = 0 
	while a < num/2
		b = 0 
		while b < num/2
			c = 0
			while c < num/2
				if (a < b) && (b < c)
					if (a**2) + (b**2) == (c**2)
						if (a+b+c) == num
							return a*b*c
						end
					end
				end
				c+=1
			end
			b += 1
		end
		a += 1
	end
end


p pytha_triplet 1000

