# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
    WIN_COMBINATIONS.detect do |combo|
      board[combo[0]] == board[combo[1]] && 
      board[combo[1]] == board[combo[2]] &&
      position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? { |space| space == "X" || space == "O" }
end

def draw? (board)
  if full?(board) && !won?(board)
    return true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
end
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end

      
    
