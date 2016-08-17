
puts "________________Sum square difference__________________"


def sum_square_difference num
	x = 1
	sum_of_the_squares = 0
	sum = 0
	while x <= num
		sum_of_the_squares += x*x 
		sum += x

		x +=1
	end
	square_of_the_sum = sum * sum

	difference = square_of_the_sum - sum_of_the_squares
	return difference


end

p sum_square_difference 100