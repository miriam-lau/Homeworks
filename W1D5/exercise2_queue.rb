class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.clone
  end
end

if $PROGRAM_NAME == __FILE__
  queue = Queue.new
  p queue.show
  p queue.enqueue(1)
  p queue.enqueue(2)
  p queue.show
  p queue.dequeue
  p queue.show
end
