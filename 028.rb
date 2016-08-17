

puts "_______________________Number spiral diagonals_________________"


def diagonals
	result = 1
	i = 2
	while i < 1002
		if i % 2 != 0
			#making a maze of i by i
			fourth_element_of_the_maze = i * i
			third_e = fourth_element_of_the_maze - (i-1)
			second_e = fourth_element_of_the_maze - ((i-1)*2)
			first_e = fourth_element_of_the_maze - ((i-1)*3)
			result += (fourth_element_of_the_maze + third_e + second_e + first_e)
		end 
		i += 1
	end
	result
end

p  "the result of spiral till 1001 is : #{diagonals}" 



