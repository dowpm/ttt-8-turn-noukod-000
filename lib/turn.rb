#turn
def turn(board)
  puts "Please enter 1-9:"
  #input = gets.strip
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index, character="X")
    display_board(board)
  else
    until valid_move?(board, index) == true
      puts "Wrong enter"
      turn(board)
      break
    end
  end
end

# code your input_to_index and move method here!
def input_to_index(position)
  position = position.to_i
  return position-1
end

# code your #valid_move? method here
def valid_move?(array,index)
  if index >= 0 and index <= 8
    return position_taken?(array,index)
  else
    return false
  end
end

#move
def move(array, index, character="X")
  array[index] = character
  return array
end

#display_board
def display_board(state_array)
  puts " #{state_array[0]} | #{state_array[1]} | #{state_array[2]} "
  puts "-----------"
  puts " #{state_array[3]} | #{state_array[4]} | #{state_array[5]} "
  puts "-----------"
  puts " #{state_array[6]} | #{state_array[7]} | #{state_array[8]} "
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(array,index)
  if (array[index] == " " or array[index] == "" or array[index] == nil)
    true
  else
    false
  end
end
