class Batman
  attr_accessor :name, :health, :stage, :alfred_calls
	def initialize 
		@name =  "Batman"
		@health = 30
		@stage = [0]
    @alfred_calls = 3
	end
  def call_alfred
    if alfred_calls >= 1
      health_package =  rand(3..8)
      self.health += health_package
      puts "alfred aumento #{health_package} unidades en HEALTH"
    end
    self.alfred_calls -=1
  end
  def figth_noob
    noob_damage = rand(2..7)
    self.health -= noob_damage
    puts "pow\nla vida se redujo #{noob_damage} unidades"
  end

	
end
