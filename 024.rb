puts "___________Lexicographic permutations___________"


def permutations array
	k = array.length - 1
	while k > 0 and array[k - 1] >= array[k]
		k -= 1
	end

	i = array.length - 1
	while array[i] <= array[k-1]
		i -= 1
	end

	array[k-1], array[i] = array[i], array[k-1]

	array[k..array.length] = array[k..array.length].reverse

	return array


end


count = 1 
array = [0,1, 2, 3, 4,5,6,7,8,9]
while count < 1000000
	array = permutations(array)
	count +=1
end

puts "The #{count}th permutation is #{array.join}"


