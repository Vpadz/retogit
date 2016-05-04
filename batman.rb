class Batman
  attr_accessor :name, :health, :stage, :alfred_calls
	def initialize 
		@name =  "Batman"
		@health = 30
		@stage = [0]
   		@alfred_calls = 3
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
		system("clear")
		puts("+--------------Batman's Stats-----------+")
		puts("+--------------Health:#{@health} points---------+")
		puts("+--------------Position:#{@position}---------------+")
	end
	def load_stage
		for i in 1..9 do
			var = rand(0..2)
			if var.zero?
			 	stage.push 1
			else
				stage.push 0
			end 		 
		end
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

    
  def call_alfred
    if alfred_calls >= 1
      health_package =  rand(3..8)
      self.health += health_package
      self.show_stats
      puts "alfred aumento #{health_package} unidades en HEALTH"
    end
    self.alfred_calls -=1
  end

  def fight_noob
    noob_damage = rand(2..7)
    self.health -= noob_damage
    self.show_stats
    puts "pow\nla vida se redujo #{noob_damage} unidades"
	  
  end
  def fight_boss
  	guason_dmg = rand(5..25)
  	self.health -= guason_dmg
   	self.show_stats
  	puts "Esta pelea fue muy intensa, el Joker le quito #{guason_dmg} de vida a Batman"

  end
end
