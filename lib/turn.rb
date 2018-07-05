
# code your #valid_move? method here
def valid_move?(board,index)
  !(index > 8 || index < 0) && !position_taken?(board,index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  !(board[index] == " " || board[index] == "" || board[index] = nil)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i
  index - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.split
  index = input_to_index(input)
  # while !valid_move(board,index)
  #   turn(board)
  # end
end
