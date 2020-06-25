require_relative "board"


board_1 = Board.new

puts "current board: "
puts board_1.board


# actions = {"board" => "board"}
# puts "Welcome! type an action (\"board\"):"
# action = gets.chomp.downcase



puts "select a column (0-6):"
x = gets.chomp.to_i
board_1.column = x


checking = []
while checking != ["x","x","x","x"]
  checking = []
  n = 6
  # puts "\"x\": #{x}"
  while n <=6
    if board_1.rows[n][x] == "x"
      checking << "x"
      n -= 1
    else
      break
    end
  end
  # p checking
  if checking == ["x","x","x","x"]
    puts "You win!!"
    break
  else
    puts "select a column (0-6):"
    x = gets.chomp.to_i
    board_1.column = x
  end
end

    
  
  