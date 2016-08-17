puts "___________________Distinct powers_________________________"

def d_powers l, u 
	a = l
	seq = []
	while a <= u
		b = l
		while b <= u
			seq << a ** b
			b += 1
		end
		a +=1
	end
	seq.sort.uniq.length
end

p "The length of the sequence is #{d_powers(2, 100)}"