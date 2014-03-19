require 'rspec/core'
require 'pacman'
require_relative('../bin/pacman_cli')

describe 'Pacman CLI' do
  it 'shows initial state of pacman on a grid filled with dots' do
    game = Pacman.new
    game.run
    expect(game.game_board.flatten.include?('V')).to eq true
  end

  it 'shows pacman\'s direction based on input' do
    pending
    game = Pacman.new
    game.move("left")

    expect(game.pacman_state).to eq ">"

    game.move("right")
    expect(game.pacman_state).to eq "<"
  end

  it 'should return pacman\'s index in the game board' do
    pending
    game = Pacman.new
    expect(game.pacman_location).to eq 5
  end

  it 'shows pacman moving to different positions in the array' do
    pending
    game = Pacman.new
    game.move("left")
    expect(game.pacman_location).to eq 4

    game.move("right")
    expect(game.pacman_location).to eq 5
  end

  it 'initializes with a 10 by 10 game board populated with pacman and food' do
    game = Pacman.new
    expect(game.run).to eq [['.','.','.','.','.','.','.','.','.','.'],
                            ['.','.','.','.','.','.','.','.','.','.'],
                            ['.','.','.','.','.','.','.','.','.','.'],
                            ['.','.','.','.','.','.','.','.','.','.'],
                            ['.','.','.','.','.','.','.','.','.','.'],
                            ['.','.','.','.','.','.','.','.','.','.'],
                            ['.','.','.','.','.','.','.','.','.','.'],
                            ['.','.','.','.','.','V','.','.','.','.'],
                            ['.','.','.','.','.','.','.','.','.','.'],
                            ['.','.','.','.','.','.','.','.','.','.'],]
  end
end