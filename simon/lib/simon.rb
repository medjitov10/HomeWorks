class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until game_over
    game_over_message
    reset_game
    play
  end

  def take_turn
    puts "Your turn"
    show_sequence
    require_sequence
    round_success_message
    sleep(2)
    system("clear")
    @sequence_length+=1
  end

  def show_sequence
    add_random_color
    @seq.each do |el|
      p el
      sleep(2)
    end
    system('clear')
  end

  def require_sequence
     gets.chomp.split(",") == @seq ? @game_over = false : @game_over = true
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    return if @game_over
    p "Good job"
  end

  def game_over_message
    p "game over"
    sleep(2)
    system("clear")
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
