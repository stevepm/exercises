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

    game.move("right")
    expect(game.pacman_state).to eq "<"
  end

  it 'should return pacman\'s index in the game board' do
    game = Pacman.new
    expect(game.pacman_location).to eq 5
  end

  it 'shows pacman moving to different positions in the array' do
    pending
    game = Pacman.new


  end
end