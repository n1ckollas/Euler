
puts "____________Longest Collatz Sequence_________________________"

n = 2
terms_collection = []
while n < 1000000 
	cn = n
	terms = 0
	while cn >= 2 
		if cn % 2 == 0 
			#if it's even
			terms += 1
			cn  = cn / 2
			if cn == 1 
				# end term count and save
				terms += 1
				terms_collection << [n,terms]
			end	
		elsif cn % 2 != 0 
			# if it's odd
			cn = (3 * cn) + 1
			terms += 1
		end
	end		
	n += 1
end


largest_term = 0
largest_number = 0
terms_collection.each do |x|
	if x[1] > largest_term
		largest_number = x[0]
		largest_term = x[1]
	end
end

p "the number that produces the longest chain is #{largest_number}"

# 837799