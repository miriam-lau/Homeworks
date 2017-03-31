class Stack
  def initialize
    @arr = []
  end

  def add(el)
    @arr << el
  end

  def remove
    @arr.pop
  end

  def show
    @arr.clone
  end
end

if $PROGRAM_NAME == __FILE__
  stack = Stack.new()
  p stack.show
  p stack.add(1)
  p stack.add(2)
  p stack.show
  p stack.remove
  p stack.show
end
