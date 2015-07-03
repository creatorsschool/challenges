# Description

There are two often used collection in programming, which are the
[stack](https://en.wikipedia.org/wiki/Stack_(abstract_data_type)) and the
[queue](https://en.wikipedia.org/wiki/Queue_(abstract_data_type)).

The difference between them is that the stack has a LIFO structure and the queue
has a FIFO structure.

Let's first build a stack. Here's how it's supposed to work:

```ruby
stack = Stack.new
stack.push(2)
stack.push(3)
stack.pop # => 3
stack.pop # => 2
stack.pop # => nil
```

and now on to the queue:

```ruby
queue = Queue.new
queue.enqueue(2)
queue.enqueue(3)
queue.dequeue # => 2
queue.dequeue # => 3
queue.dequeue # => nil
```
