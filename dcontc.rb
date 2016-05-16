class Uf
  attr_accessor :arr, :arr_id	
	def initialize
		arry = Array.new(9, Array.new(9,0))
		@arr= arry.map{|l| l.map {|k| k=rand(2)}}
		f = 0
		@arr_id = arry.map do|l| 
			l.map do |k|
			       	k+f
			f+=1 
			end
		end

	end
	def union (i,j,x,y)
		ijvalue = arr_id[i][j]
		puts arr_id[i][j]
		puts arr_id[x][y]
		if arr_id[i][j] != arr_id[x][y] && (((x == i+1 || x == i-1) && (y == j))||((y == j+1 || y == j-1)&&(x == i)))
			for i in 0..8 do
				for j in 0..8
					if ijvalue == arr_id[i][j]
						arr_id[i][j] = arr_id[x][y]
					end
				end
			end
    else 
      puts "no estan juntos, no se pueden conectar"
		end

		puts "#{arr_id[0]}"
		puts "#{arr_id[1]}"
		puts "#{arr_id[2]}"
		puts "#{arr_id[3]}"
		puts "#{arr_id[4]}"
		puts "#{arr_id[5]}"
		puts "#{arr_id[6]}"
		puts "#{arr_id[7]}"
		puts "#{arr_id[8]}"
	end
  def connected(i,j,x,y) 
    if  arr_id[i][j] == arr_id[x][y]
      true
    else
      false
    end
  end
  def rand_union
    self.union(rand(9),rand(9),rand(9),rand(9))
  end
  def conect_all(i,j,x,y)
    loop do
      self.rand_union
      break if connected(i,j,x,y)
    end
    
  end
  def print_map(i,j)
    arr_id.each do |l|
      l.each do |k|
        if k == arr_id[i][j]
          print "|_|"
        else
          print "   "
        end
      end
        puts 
    end
    
  end
end
 
