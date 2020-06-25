class Board
  
  def initialize
    @rows = [["-","-","-","-","-","-","-"], ["-","-","-","-","-","-","-"], ["-","-","-","-","-","-","-"], ["-","-","-","-","-","-","-"], ["-","-","-","-","-","-","-"], ["-","-","-","-","-","-","-"], ["-","-","-","-","-","-","-"]]
  end

  def rows
    return @rows
  end

  def column=(i)
    if i < 7 && i >= 0
      x = 0
      y = i
      while x <= 6
        if rows[x][y] == "-"
          if x == 6
            break
          else
            x += 1
          end
        else
          x -= 1
          if x < 0 
            x = 0
          end
          break
        end
      end
      # puts "\"x\" = #{x}; \"y\" = #{y}"
      # puts ""
      rows[x][y] = "x"
      puts board
    end
  end

  def board
    x = 0
    7.times do
      puts @rows[x].join
      x += 1
    end
    return
  end

end