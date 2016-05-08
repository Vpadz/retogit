require_relative 'board.rb'

class Action 

	def initialize
		@batman="|B|"
		@blank = "|_|"
		@boards = Board.new 
		@position = []
		@boards.board[1][0] = @batman
	end

	def move
		for i in (0..10)
			find_batman
			previous = @position
			puts "W -> UP \t S -> DOWN \t D -> RIGHT \t A -> LEFT"
			case key_press
			when "W"
				@position[0] -= 1
			when "S"
				@position[0] += 1
			when "D"
				@position[1] += 1
			when "A"
				@position[1] -= 1
			else
				puts "Ingrese una opcion valida"
			end
			if validate_move(@position)
				puts "There is a wall Batman! You can't go throught it"
			else 
				set_move(previous)
				@boards.print_board
			end
		end
	end

	def validate_move(position)
		is_wall = false
		is_wall = true if @boards.board[position[0]][position[1]] != @blank
	end

	def set_move(previous)
		puts previous
		@boards.board[previous[0]][previous[1]] = @blank
		@boards.board[@position[0]][@position[1]] = @batman
	end

	def find_batman
		@boards.board.each_with_index do |elem,x|
		 	elem.each_with_index do |elem2,y|
		 		@position[0] = x and @position[1] = y if elem2.equal?(@batman) 
		 	end
		end
	end

	def key_press
		system("stty raw -echo")
		key = STDIN.getc.upcase
		system("stty -raw echo")
		key
	end
end

b = Action.new
b.move
