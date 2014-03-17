require 'rspec/core'
require 'pacman'
require_relative('../bin/pacman_cli')

describe 'Pacman CLI' do
  it 'shows pacman on a grid filled with dots' do
    game = Pacman.new
    expect(game.pacman_state).to eq('V')
  end

  it 'shows pacman\'s direction based on input' do
    game = Pacman.new
    game.move("left")
    expect(game.pacman_state).to eq ">"

  end
end