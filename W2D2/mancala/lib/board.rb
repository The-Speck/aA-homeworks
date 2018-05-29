require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = place_stones
  end

  def place_stones
    Array.new(14) do |idx|
      if idx == 6 || idx == 13
         []
      else
        Array.new(4){:stone}
      end
    end
  end

  def valid_move?(start_pos)
    if start_pos < 1 || start_pos > 14
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    moves = cups[start_pos]
    cups[start_pos] = []

    if @name1 == current_player_name
      opponent_index = 13
    else
      @name2 == current_player_name
      opponent_index = 6
    end

    i = 1
    next_cup_index = nil
    until moves.empty?
      next_cup_index = (start_pos + i)%14
      cups[next_cup_index] << moves.shift unless opponent_index == next_cup_index
      i+=1
    end

    render
    next_turn(next_cup_index)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[0...6].all?(&:empty?) ||
    cups[7...13].all?(&:empty?)
  end

  def winner
    player1 = cups[6].length
    player2 = cups[13].length

    return :draw if player1 == player2
    player1 > player2 ? @name1 : @name2
  end
end
