$LOAD_PATH.unshift(File.expand_path('../lib',__FILE__))
require 'pacman'

game = Pacman.new
game.run

game.print_board
print "\n"
game.move('left')
game.print_board
