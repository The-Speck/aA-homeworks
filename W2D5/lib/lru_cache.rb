class LRUCache
  attr_reader :max

  def initialize(size)
    @max = size
    @queue = []
  end

  def count
    queue.length
  end

  def add(el)
    if queue.include?(el)
      self.queue = reset_item(el)
    else
      queue.shift if queue.length >= max
      queue << el
    end
  end

  def show
    print queue
    queue
  end

  protected
  attr_accessor :queue

  private
  def reset_item(el)
    arr = queue.reject{|item| el == item}
    arr << el
  end
end
