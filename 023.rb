
puts "_______________________Non-abundant sums_________________"

def sum_of_prop_devisors num
	sum = 0
	x = num - 1
	while x > 0
		if num % x == 0
			sum += x
		end
		x -= 1
	end
	sum
end

def is_abundant? num
	sum_of_prop_devisors(num) > num ? true : false
end

def each_half num
	if num % 2 == 0
		half = num / 2
	elsif num % 2 != 0
		half = (num / 2) + 1
	end
	answer = false
	i = half
	while i > 0
		si = half - 1
		while si <= num
			if i + si == num
				# p "two halfs found one is : #{i}, second is : #{si}"
				if (is_abundant?(i) && is_abundant?(si))
					answer = true
					break
				end
			end
			si +=1
		end
		i-= 1
	end
	answer
end

def non_a_sum
	sum = 0
	x = 1
	while x <= 28123
		# p x  #just to see the progres
		if !each_half(x)
			sum += x
		end
		x += 1
	end
	sum
end

# !!! Warning

# Core I5 @ 2.50Ghz took  162680.771032 sec. ~ 2 days
# "the result is 4179871"



start = Time.now

p "the result is #{non_a_sum}"

seconds  = Time.now - start
puts  "It took  #{seconds} sec."
