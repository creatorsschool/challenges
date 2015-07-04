class Stack
  def initialize
    @data = []
  end

  def push(value)
    @data.push(value)
  end

  def pop
    @data.pop
  end
end

stack = Stack.new
stack.push(2)
stack.push(3)
p stack.pop
p stack.pop
p stack.pop

class Queue
  def initialize
    @data = []
  end

  def enqueue(val)
    @data.unshift(val)
  end

  def dequeue
    @data.pop
  end
end

queue = Queue.new
queue.enqueue(2)
queue.enqueue(3)
p queue.dequeue
p queue.dequeue
p queue.dequeue
