puts "________________Multiples of three and five___________________"

def multips_below num
	r = []
	x = 0
	while x < num
		if x % 3 == 0
			r << x 
		elsif x % 5 == 0
			r << x
		end
		x+=1
	end
	r.inject(0){|sum, num| sum + num}
	
end

p multips_below(1000)
