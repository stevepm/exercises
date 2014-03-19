require 'rspec/core'
require 'pacman'
require_relative('../bin/pacman_cli')

describe 'Pacman CLI' do
  it 'shows initial state of pacman on a grid filled with dots' do
    game = Pacman.new
    game.run
    expect(game.game_board.flatten.include?('V')).to eq true
  end

  it 'changes pacman\'s state based on input' do
    game = Pacman.new
    game.run

    game.move("left")
    expect(game.pacman_state).to eq ">"

    game.move("right")
    expect(game.pacman_state).to eq "<"

    game.move("up")
    expect(game.pacman_state).to eq "V"

    game.move("down")
    expect(game.pacman_state).to eq "A"
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