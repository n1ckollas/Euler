puts "________________Largest palindrome product__________________"

def is_palindrome num
	number = num.to_s.split(//)
	reversed = []
	idx = 1
	while idx <= number.length
		reversed << number[-(idx)]
		idx +=1
	end
	reversed.join == num.to_s ? true : false
end


def largest_palindrome_product num1, num2
	r  = []

	for x in (1..num1).to_a
		for z in (1..num2).to_a
			result = x * z
			if is_palindrome result
				r << result
			end
		end
	end


r.max

end


p "the largest palindrome is : #{largest_palindrome_product(999, 999)}"