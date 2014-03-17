$LOAD_PATH.unshift(File.expand_path('../lib',__FILE__))
require 'pacman'

game = Pacman.new

print game.game_board