class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new() }
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..5).each do |i|
      4.times do
        @cups[i] << :stone
      end
    end

    (7..12).each do |i|
      4.times do
        @cups[i] << :stone
      end
    end
  end

  def valid_move?(start_pos)
    unless start_pos.between?(0,5) || start_pos.between?(7,12)
      raise "Invalid starting cup"
    end

    if @cups[start_pos].empty?
      raise "Invalid stating cup"
    end
  end

  def make_move(start_pos, current_player_name)
    num_of_stones = @cups[start_pos].length
    @cups[start_pos] = []

    current_cup_idx = start_pos
    while num_of_stones > 0
      current_cup_idx += 1

      current_cup_idx = 0 if current_cup_idx > 13

      if current_cup_idx == 13
        if current_player_name == @name2
          @cups[current_cup_idx] << :stone
          num_of_stones -= 1
        end
      elsif current_cup_idx == 6
        if current_player_name == @name1
          @cups[current_cup_idx] << :stone
          num_of_stones -= 1
        end
      else
        @cups[current_cup_idx] << :stone
        num_of_stones -= 1
      end
    end

    self.render
    next_turn(current_cup_idx)
  end


  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 13 || ending_cup_idx == 6
      :prompt
    elsif @cups[ending_cup_idx].count == 1
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
    numempty = 0
    is_empty = true
    (0..5).each do |i|
      is_empty = false unless @cups[i].empty?
    end

    numempty += 1 if is_empty
    is_empty = true

    (7..12).each do |i|
      is_empty = false unless @cups[i].empty?
    end

    numempty += 1 if is_empty

    numempty == 1
  end

  def winner
    p1_tally = @cups[6].count
    p2_tally = @cups[13].count
    case p1_tally <=> p2_tally
      when 0 then :draw
      when 1 then @name1
      else
        @name2
    end
  end

end

#b = Board.new("Erica", "James")
