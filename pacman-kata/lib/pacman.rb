class Pacman
  attr_accessor :pacman_state, :game_board, :pacman_location
  PACMAN_STARTING_WIDTH = 5
  PACMAN_STARTING_HEIGHT = 7
  GAME_WIDTH = 10
  GAME_HEIGHT = 10
  def initialize
    @pacman_state = 'V'
    @game_board = []
    @pacman_location = []
    @food = '.'
  end

  def move(direction)
    pacman_direction = self.pacman_do(direction)
    case pacman_direction
      when '>'
        self.position(direction)
      when '<'
        self.position(direction)
      end
  end

  def run
    self.game_state
    @game_board[PACMAN_STARTING_HEIGHT][PACMAN_STARTING_WIDTH] = @pacman_state
    @game_board
  end

  def pacman_do(command)
    case command
      when 'left'
        @pacman_state = '>'
      when 'right'
        @pacman_state = '<'
      when 'up'
        @pacman_state = 'V'
      when 'down'
        @pacman_state = 'A'
    end
    @pacman_state
  end
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
    #@game_board[@pacman_location] = @pacman_state
    if direction == 'left'
      @game_board[find_pacman_column][find_pacman_row + 1] = '.'
    elsif direction == 'right'
      @game_board[find_pacman_column][find_pacman_row - 1] = '.'
    end
  end

  def find_pacman_row
    row_counter = 0
    holds_row = 0
    @game_board.any? do |row|
      if row.include?(@pacman_state)
        holds_row = row_counter
      end
      row_counter += 1
    end
    holds_row
  end

  def find_pacman_column
    holds_column = 0
    @game_board.any? do |row|
      if row.include?(@pacman_state)
        holds_column = row.index(@pacman_state)
      end
    end
    holds_column
  end

  def find_pacman_location
    @pacman_location = [self.find_pacman_column][self.find_pacman_row]
  end
end