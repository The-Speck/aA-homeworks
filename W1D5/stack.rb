class Stack
  def initialize
    @stack = []
  end

  def add(el)
    stack << el
  end

  def remove
    stack.pop
  end

  def show
    stack
  end

  private
  attr_accessor :stack
end

stack = Stack.new
stack.add("i")
stack.add("love")
stack.add("ruby")
p stack.show
stack.remove
p stack.show
