class Board
	attr_accessor :board
	
	def initialize()
		@board = []
		@block = "|_|"
		@empty = "   "
		creat_rows
	end

	def creat_rows()                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
		design_board(1,2,3,5,6,7,8)
		design_board(0,1,5,7)
		design_board(1,4,5,7,8,10,11)
		design_board(1,2,3,4,5,7,8,9,10)
	end

	def print_board
		board.each do |elem|
			elem.each do |elem2|
				print("#{elem2} ")
			end
			puts
		end
	end

	def design_board(*params)
		row = []
		params.each do |elem|
			row[elem] = @block
		end
		for i in (0..row.length-1)
			if row[i] != @block
				row[i] = @empty
			end
		end		
		board.push(row)
	end
end
