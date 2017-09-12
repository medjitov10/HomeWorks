
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){[:stone]*4}
    @cups[6]=[]
    @cups[13]=[]
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end
  class MyError < StandardError
  end
  def valid_move?(start_pos)

    if start_pos > 14 || start_pos < 0 || @cups[start_pos].empty?
     raise MyError.new("Invalid starting cup")
    end

  end

  def make_move(start_pos, current_player_name)
    i=0
    until @cups[start_pos].empty?
      i+=1
      unless ((start_pos+i)%14 == 13 && current_player_name == @name1) ||
        ((start_pos+i)%14 == 6 && current_player_name == @name2)
        @cups[(start_pos+i)%14] << @cups[start_pos].pop
      end

    end

    render
    next_turn((start_pos+i)%14)

  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    return :prompt if ending_cup_idx == 6 || ending_cup_idx == 13
    return :switch if @cups[ending_cup_idx].count == 1

    return ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
   return true if @cups[0..5].all?{|el| el.empty?}
   return true if @cups[7..12].all?{|el| el.empty?}
   false
  end

  def winner
    return :draw if @cups[6]==@cups[13]
    return @name1 if @cups[6].count>@cups[13].count
    @name2
  end
end
