# class Board
#   attr_accessor :board
#   def initialize
#
#
#   end
#
#   def render
#     board.each do |i|
#       i.each do |j|
#         print j.bomb
#       end
#       puts
#     end
#     nil
#   end
#
# end

class Cell
  attr_accessor :bomb
  def initialize(isBomb)
    @bomb = isBomb ? 1 : 0
    @checked = false
  end
end

class Game
  attr_accessor :grid, :board
  def initialize
    @board = Array.new(9) {Array.new(9) {Cell.new(rand(2) == 1 ? true : false)}}
    @grid = Array.new(9) {Array.new(9) {0}}
  end
  def render
    self.grid.each do |i|
      i.each do |j|
        if j == 0
          print "- "

        elsif j == 2
          print "# "
        else
          print "#{j} "
        end

      end
      puts
    end
    nil
  end
  def render_board
    board.each do |i|
         i.each do |j|
           print j.bomb
         end
         puts
       end
       nil
  end

  def parse_pos(str)
    str.split(",").map{|el| el.to_i}
  end

  def get_position
    render
    render_board
    p "Choose coord"
    pos = parse_pos(gets.chomp)
    if board[pos.first][pos.last].bomb == 1
      puts "boobm"
      grid[pos.first][pos.last]=2
    else
      grid[pos.first][pos.last]=how_many_bomb_around(pos)
    end

  end

  def how_many_bomb_around(pos)
    count = 0
    debugger
    (pos.first-1..pos.first+1).each do |x|
      (x..x+3).each do |j|
        if board[x][j].bomb == 1
          count +=1
        end
      end
    end
    count
  end

  def game_over
    grid.flatten.any?{|el| el == 2}
  end
  def play
    until game_over
      get_position
    end
    render
    puts "Game over"
  end
end
