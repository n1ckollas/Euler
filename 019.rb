puts "________________Counting Sundays_______________"

def is_leap year
	if year % 4 == 0
		if year % 100 != 0 || year % 400 == 0
			return 29
		end
	end
	return 28
end

def first_sundays start_year,  stop_year
	year = 1900
	days_a_week = 7
	sundays_on_first = 0
	days_remained = nil
	while year <= stop_year
		days_per_month = [31, is_leap(year), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
		for x in days_per_month
			if days_remained != nil
				x = x - (days_a_week - days_remained)
			end 
			days_remained = x % days_a_week
			if days_remained == 6 and year >= start_year
				sundays_on_first += 1
			end
		end
		year += 1
	end
	sundays_on_first
end

puts "result is #{first_sundays(1901, 2000)}"