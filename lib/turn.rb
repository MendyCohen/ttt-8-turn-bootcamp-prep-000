def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  return index.to_i - 1
end

# def position_taken?(board, index)
#   if  board[index] == "" || board[index] == " " || board[index] == nil
#     false
#   elsif board[index] != "" || board[index] != " "
#     true
#   end
# end

def valid_move?(board, index)
    if index.between?(0,8) && board[index] == " "
        true
    else
        false
    end
end

def move(board, input, value = 'X')
   board[input] = value
end

def turn(board)
   puts "Please enter 1-9:"
   index = gets.strip
   index = input_to_index(index)
     valid_move?(board, index) == index
  #   move
  # else
  #  turn
  # end 
end



