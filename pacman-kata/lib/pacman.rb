class Pacman
  attr_accessor :pacman_state, :game_board, :pacman_location
  STARTING_LOCATION = 5
  def initialize
    @pacman_state = 'V'
    @game_board = ['.','.','.','.','.','.','.','.','.','.','.']
    @game_board[STARTING_LOCATION] = @pacman_state
    @pacman_location = @game_board.index(@pacman_state)
  end

  def move(direction)
    case direction
      when 'left'
        @pacman_state = '>'
        @pacman_location -= 1
        self.position('left')
      when 'right'
        @pacman_state = '<'
        @pacman_location += 1
        self.position('right')
      end
  end

  def position(direction)
    @game_board[@pacman_location] = @pacman_state
    if direction == 'left'
      @game_board[@pacman_location + 1] = '.'
    elsif direction == 'right'
      @game_board[@pacman_location - 1] = '.'
    end
  end
end