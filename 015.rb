
puts "____________________Lattice Paths______________________________"


gridSize = [20,20]

def recPath(gridSize)
	if  gridSize == [0,0]
		return 1
	end
	paths = 0 

	if gridSize[0] > 0 
		paths += recPath([gridSize[0]-1, gridSize[1]])
	end
	if gridSize[1] > 0 
		paths += recPath([gridSize[0], gridSize[1]-1])
	end

	return paths
end


# answer :137846528820
# warning !!!! on Intel® Celeron(R) CPU 900 @ 2.20GHz
# It took  423025.359737551 sec. ~ 5 days




start = Time.now

puts recPath(gridSize)

seconds  = Time.now - start
puts  "It took  #{seconds} sec."