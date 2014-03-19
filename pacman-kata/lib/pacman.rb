class Pacman
  attr_accessor :pacman_state, :game_board, :pacman_location
  PACMAN_STARTING_COLUMN = 5
  PACMAN_STARTING_ROW = 7
  GAME_WIDTH = 10
  GAME_HEIGHT = 10
  def initialize
    @pacman_state = 'V'
    @game_board = []
    @pacman_location = Array.new
    @food = '.'
  end

  def move(direction)
    self.pacman_do(direction)
  end

  def run
    self.create_board
    @game_board[PACMAN_STARTING_ROW][PACMAN_STARTING_COLUMN] = @pacman_state
    @game_board
  end

  def pacman_do(command)
    case command
      when 'left'
        @game_board[self.find_pacman_row][self.find_pacman_column - 1] = '>'
        @pacman_state = '>'
      when 'right'
        @game_board[self.find_pacman_row][self.find_pacman_column + 1] = '<'
        @pacman_state = '<'
      when 'up'
        @game_board[self.find_pacman_row - 1][self.find_pacman_column] = 'V'
        @pacman_state = 'V'
      when 'down'
        @game_board[self.find_pacman_row + 1][self.find_pacman_column] = 'A'
        @pacman_state = 'A'
    end
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

  def create_board
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

  def print_board
    @game_board.each do |row|
      print row.join(' ')
      print "\n"
    end
  end

  def position(direction)
    if direction == 'left'
      @game_board[self.find_pacman_column][self.find_pacman_row]
    elsif direction == 'right'
      @game_board[self.find_pacman_column][self.find_pacman_row]
    end
  end

  def find_pacman_row
    @game_board.each_with_index do |row, index|
      if row.include?(@pacman_state)
        return index
      end
    end
  end

  def find_pacman_column
    holds_column = 0
    @game_board.each do |row|
      if row.include?(@pacman_state)
        row.each_with_index do |column, index|
          if column == @pacman_state
            holds_column = index
            break
          end
        end
      end
    end
    holds_column
  end

end

# go through each row
# if in the row, go through each_with_index element of row
# when we find element, return index