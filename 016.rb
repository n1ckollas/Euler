
puts "____________________Power Digit Sum______________________________"
def pds num, powers
	x = 1
	original = num

	while x < powers
		num *= original
		x +=1
	end
	num
end
final = 0
r = pds(2, 1000)
r.to_s.each_char do |c|
	final += c.to_i
end
p final


