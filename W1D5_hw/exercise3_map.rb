class Map
  def initialize
    @nested_arr = []
  end

  def assign(key, value)
    @nested_arr.each do |arr|
      if arr.include?(key)
        arr[1] = value
        return [key, value]
      end
    end
    @nested_arr << [key, value]
    [key, value]
  end

  def lookup(key)
    @nested_arr.each { |arr| return arr[1] if arr.include?(key) }
    nil
  end

  def remove(key)
    @nested_arr.delete_if { |arr| arr[0] == key }
    nil
  end

  def show
    @nested_arr.clone
  end
end

if $PROGRAM_NAME == __FILE__
  map = Map.new
  p map.show
  p map.assign("a", 1)
  p map.show
  p map.lookup("a")
  p map.lookup("z")
  p map.assign("b", 2)
  p map.lookup("a")
  p map.show
  p map.assign("b", 3)
  p map.show
  p map.remove("a")
  p map.show
end
