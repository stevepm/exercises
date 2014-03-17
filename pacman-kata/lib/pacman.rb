class Pacman
  attr_accessor :pacman_state
  def initialize
    @pacman_state = 'V'
    @game_board = []
  end

  def game_board
    @game_board = ['.','.','.','.','.',@pacman_state,'.','.','.','.','.']
  end

  def move(direction)
    if direction == "left"
      @pacman_state = '>'
    end
  end
end