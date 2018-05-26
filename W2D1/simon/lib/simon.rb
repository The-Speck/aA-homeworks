require 'byebug'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    # byebug
    until game_over
      take_turn
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless game_over
      round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    puts "Remember this sequence"
    puts seq.join(" ")
    sleep(1*sequence_length)
    system("clear")
  end

  def require_sequence
    seq.each_with_index do |color, idx|
      puts "What is color ##{idx+1}?"
      input = gets.chomp
      if input != color
        self.game_over = true
        break
      end
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "You got it!"
  end

  def game_over_message
    puts "You lost!"
  end

  def reset_game
    puts "Dare to try again?"
    self.game_over = false
    self.sequence_length = 1
    self.seq = []
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  game.play
end
