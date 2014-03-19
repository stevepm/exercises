require 'rspec/core'
require 'pacman'
require_relative('../bin/pacman_cli')

describe 'Pacman CLI' do
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

  it 'moves pacman to a new location based on input' do
    game = Pacman.new
    game.run

    expect(game.find_pacman_row).to eq(7)
    expect(game.find_pacman_column).to eq(5)

    game.move("left")
    expect(game.find_pacman_row).to eq 7
    expect(game.find_pacman_column).to eq 4

    game.move("right")
    expect(game.find_pacman_row).to eq 7
    expect(game.find_pacman_column).to eq 5

    game.move("up")
    expect(game.find_pacman_row).to eq 6
    expect(game.find_pacman_column).to eq 5

    game.move("down")
    expect(game.find_pacman_row).to eq 7
    expect(game.find_pacman_column).to eq 5
  end


end