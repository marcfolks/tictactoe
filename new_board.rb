class Board
    attr_accessor :ttt_board
def initialize(ttt_board)
    @ttt_board = Array.new(9,"")
end
def update_position(position,marker)
    ttt_board[position]= marker
end
def valid_position?(postion)
    if board[position]=''
        true
    else
        false
    end
end
def valid_input?(input)
    if input.match(/[xXoX]/)
        true
    else
        false
    end

end
def full_board?
    ttt_board.count('') == 0
end
def winner?(marker)
    winners =[[1,2,3],[4,5,6],[7,8,9],[1,5,9],[7,5,3],[1,4,7],[2,5,8],[3,6,9]]
results = false

winners.each do|inner_array|
    count = 0

    inner_array.each do |value|

        if ttt_board[value]==marker
            count +=1
            if count == 3
                results = true
            end
        end
    end
end
results
end
end