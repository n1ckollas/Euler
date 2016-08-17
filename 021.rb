puts "_______________________Amicable Numbers_________________"

def amicablenums num
	a_nums = []
	y = 1
	while y <= num
		x = y
		a = y - 1
		sum = 0
		while a > 0 
		 if x % a == 0
		 	sum += a
		 end
		 a -= 1
		end
		# p "the sum of all devisors of #{x} is #{sum}"


		new_sum = 0
		n = sum -1
		while n > 0
			if sum % n == 0
				new_sum += n
			end
			n -= 1
		end

		# p "the sum of all devisors of #{sum} is #{new_sum}" 

		if new_sum == x 
			if sum != x
				if (!a_nums.include?(new_sum)) && (!a_nums.include?(sum))
					a_nums << new_sum
					a_nums << sum
				end
			end
		end
		y += 1
	end
  r = a_nums.inject(){|sum, num| sum += num}
	# p "total sum of amicables is : #{r}"
end


p "the final result is #{amicablenums(10000)}" 


