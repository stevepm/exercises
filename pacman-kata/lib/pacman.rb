class Pacman
  attr_accessor :pacman_state, :game_board
  def initialize
    @pacman_state = 'V'
    @game_board = ['.','.','.','.','.',@pacman_state,'.','.','.','.','.']
  end

  def pacman_location
    @game_board.index(@pacman_state)
  end

  def move(direction)
    case direction
      when 'left'
        @pacman_state = '>'

      when 'right'
        @pacman_state = '<'
      end

  end
end