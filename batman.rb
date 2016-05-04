class Batman
	def initialize 
		@name =  "Batman"
		@health = 30
		@stage = []
		@position=0
	end

	def show_stats
		puts("+--------------Batman's Stats-----------+")
		puts("+--------------Health:#{@health} points---------+")
		puts("+--------------Position:#{@position}---------------+")

	end

	def walk 
		@position += 1
		if position < 10
			case @stage[position]
			when 0
				"Empty stage. You have run with luck this time Batman"
			when 1
				fight_noob
			end
		else
			fight_boss
		end
	end
end
