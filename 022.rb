puts "____________Name Scores______________"


data = File.read("./names.txt")
data = data.split("\"")
data = data.delete_if{|x| x == ","}
data = data.delete_if{|x| x == ""}
data = data.sort

worth = {"A" => 1,	"B" => 2,	"C" => 3,	"D" => 4,	"E" => 5,
					"F" => 6,	"G" => 7,	"H" => 8,"I" => 9,	"J" => 10,
					"K"=> 11,	"L" => 12,	"M" => 13,	"N" => 14,	
					"O" =>  15, "P" => 16,	"Q" => 17,	"R" => 18,
					"S" => 19,	"T" => 20,	"U" => 21,	"V" => 22,
					"W" =>23 ,	"X" => 24,	"Y" => 25,	"Z" => 26
					}


result = 0
data.each do |d|
	worth_of_name = 0
	d.each_char do |c|
		worth_of_name += worth[c]
	end
	score = (data.index(d) + 1) * worth_of_name
	result += score
end
# the answer is  : 871198282
puts "the total of all name scores is : #{result}" 