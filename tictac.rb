def update_move(board,player,position)
    p board
    p player
    p position
  board[position-1] = player
  board
end  
def available?(board,position)
     if board[position-1] == "x"|| board[position-1] == "o"
        false
     else board[position<=1]||board[position>=10]
        true
     end
     available?(board,position)
end
def players
    if player == 'x'
        player = 'o'
        player
    else player =='o'
        player = 'x'
        player
    end
end

# def player(x,o)
# o = "player1" 
# x = "player2" 
# end
# def play(board)
#     play=gets
# play
# end
def board
    board = ['1','2','3','4','5','6','7','8','9']
    board
end
def board_display(board)
    puts " #{board[1]} | #{board[2]} | #{board[3]} "
    puts "-----------"
    puts " #{board[4]} | #{board[5]} | #{board[6]} "
    puts "-----------"
    puts " #{board[7]} | #{board[8]} | #{board[9]} "
end
def winning_combinations 
winning_combinations = board([1,2,3]||[4,5,6]||[7,8,9]||[1,5,9]||[7,5,3]||[1,4,7]||[2,5,8]||[3,6,9])
winning_combinations
end
def won?() 
    if 'x' == (winning_combinations)
        "win"
    elsif 'o' == (winning_combinations)
        "win"
    else "loose"
    end
end

def full?(board)
    board.all?{|token| token == 'x' || token == 'o'}
end
def draw?(board)
    !won?(board) && full?(board)
end
def over?(board)
    won?(board) || draw?(board)
end
def turn_counter(board)
    board.count{|token|token == 'x' || token == 'o'}
end