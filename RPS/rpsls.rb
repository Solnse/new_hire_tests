#!/usr/bin/env ruby

class RoShamBo

  def initialize
    @played = 1
    @comp_wins = 0
    @player_wins = 0
    @choices = %w[rock paper scissors lizard spock q]
    @winners = { 'scissors' => ['paper', 'lizard'],
                 'paper'    => ['rock', 'spock'],
                 'rock'     => ['lizard', 'scissors'],
                 'lizard'   => ['spock', 'paper'],
                 'spock'    => ['scissors', 'rock']
                 }
  end

  def player_play
    player = ""
    while true do
      puts "What choice do you think will beat me? (q to quit): #{@choices}"
      player = gets.chomp.downcase
      next if player.nil?
      game_end if player == 'q'

      break if @choices.include?(player)
      puts "invalid answer, try again" 
    end
    player
  end

  def comp_play
    comp = rand(4)
    @choices[comp]
  end

  def game_end
    puts "#{@played} games played. You won #{@player_wins} games and lost #{@comp_wins}."
    abort("Thanks for playing.")
  end

  def game_play
    player   = player_play
    computer = comp_play

    puts "you: #{player}, computer: #{computer}"
    # keep played count
    @played += 1

    if player == computer
      puts "the game was a draw"
    elsif @winners[player].include?(computer)
      puts "this is the winner circle"
      @player_wins += 1
    else
      puts "You have lost, try again."
      @comp_wins += 1
    end
  end

end

game = RoShamBo.new
while true do
  game.game_play
end
