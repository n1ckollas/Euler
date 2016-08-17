puts "____________________Factorial Digit Sum______________________________"




def factorial num
	if num == 0 
		return 1
	end

	num * factorial(num - 1)
end

result = factorial 100

final = 0
result.to_s.each_char do |s|
	final += s.to_i
end


p final







