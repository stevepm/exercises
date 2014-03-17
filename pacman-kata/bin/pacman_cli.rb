$LOAD_PATH.unshift(File.expand_path('../lib',__FILE__))
require 'pacman'

game = Pacman.new

puts game.game_board