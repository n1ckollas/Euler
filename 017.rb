
puts "____________________Number Letter Counts______________________________"

def disect_by_three array

		result = " "

		if array.length > 0
			 result.prepend(array.pop(3).join)
		else
			return result
		end

		result.prepend(disect_by_three(array))

end

def in_words num
	num = num.to_i
	result = ''

	ones_place = ['one', 'two', 'three',
								'four', 'five', 'six',
								'seven', 'eight', 'nine']

	tens_place = ['ten', 'twenty', 'thirty',
								'forty', 'fifty', 'sixty',
								'seventy', 'eighty', 'ninety']

	teenagers = ['eleven', 'twelve', 'thirteen',
							 'fourteen', 'fifteen', 'sixteen',
							 'seventeen', 'eighteen', 'nineteen']

	hundreds = num /100
	tenths = num % 100
	ones = tenths % 10
	# hundreds
	result << ones_place[hundreds - 1]+ " hundred" if hundreds != 0
	result << " and " if (hundreds != 0 ) &&  (tenths !=0 || ones != 0 )

		# teenagers
	if (tenths < 20) && (tenths >= 11)
		result << " " + teenagers[(tenths) - 11]
	else
		# tenths
		result << " " + tens_place[(tenths /10) - 1] if (tenths/10) != 0 
		# ones
		result << " " + ones_place[ones - 1] if ones != 0
	end

	result.strip

end


def num_to_letter num

	result = ""

	disected = ((disect_by_three(num.to_s.split(//)).strip).split(' ')).reverse

	count = 0
	for x in disected
		if count == 0
			result.prepend(in_words(x))
		elsif count == 1
			result.prepend(in_words(x) + " thousand")
		end
		count += 1
	
	end

  # [result, result.split(/\s+/).join().length]
  result.split(/\s+/).join().length
end



x=1
number_to_letter_counts =0 
while x <= 1000
	number_to_letter_counts +=  num_to_letter(x)
	x +=1
end

p number_to_letter_counts
