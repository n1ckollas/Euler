
puts "_______________________digit fifth power_________________"




def digit_5th_pow
	r = 0
	idx = 2

	while idx <= 999999
		
		sum_of_powers = 0
		each_num = idx.to_s.split(//)
		each_num.each do |x|
			sum_of_powers += x.to_i ** 5
		end
		if idx == sum_of_powers
			r += idx
		end

		idx += 1
	end
	r

end


p "the sum of numbers is : #{digit_5th_pow}"




