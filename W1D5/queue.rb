class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    queue << el
  end

  def dequeue
    queue.shift
  end

  def show
    queue
  end

  private
  attr_accessor :queue
end

queue = Queue.new
queue.enqueue("i")
queue.enqueue("love")
queue.enqueue("ruby")
p queue.show
queue.dequeue
p queue.show
