class Pacman
  attr_accessor :pacman_state, :game_board, :pacman_location
  PACMAN_STARTING_WIDTH = 5
  PACMAN_STARTING_HEIGHT = 7
  GAME_WIDTH = 10
  GAME_HEIGHT = 10
  def initialize
    @pacman_state = 'V'
    @game_board = []
    @pacman_location = @game_board.index(@pacman_state)
    @food = '.'
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

  def run
    self.game_state
    @game_board[PACMAN_STARTING_HEIGHT][PACMAN_STARTING_WIDTH] = @pacman_state
    @game_board
  end
  #
  #def pacman_state
  #
  #end
  #
  #def food_state
  #
  #end
  #
  #def monster_state
  #
  #end
  #
  #def wall_state
  #
  #end

  def game_state
    @game_board = []
    GAME_HEIGHT.times do
      line_array = []
      GAME_WIDTH.times do
        line_array << @food
      end
      @game_board << line_array
    end
    @game_board
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