class Batman
  attr_accessor :name, :health, :stage, :alfred_calls
	def initialize 
		@name =  "Batman"
		@health = 30
    @alfred_calls = 3
    @stage = []
		@position=0
	end
  def call_alfred
    if alfred_calls >= 1
      health_package =  rand(3..8)
      self.health += health_package
      puts "alfred aumento #{health_package} unidades en HEALTH"
    end
    self.alfred_calls -=1
  end
  def fight_noob
    noob_damage = rand(2..7)
    self.health -= noob_damage
    puts "pow\nla vida se redujo #{noob_damage} unidades"
  end
	def show_stats
		puts("+--------------Batman's Stats-----------+")
		puts("+--------------Health:#{@health} points---------+")
		puts("+--------------Position:#{@position}---------------+")
	end

	def walk 
		@position += 1
		if@position < 10
			case @stage[@position]
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
