class Node
  attr_reader :element, :next_node

  def initialize(element, next_node)
    @element = element
    @next_node = next_node
  end
end

class Stack
  def push(e)
    @top = Node.new(e, @top)
  end

  def pop
    return nil unless @top
    old_top = @top
    @top = @top.next_node
    old_top.element
  end
end

stack = Stack.new
stack.push(3)
stack.push(1)
stack.push(2)

puts stack.pop
puts stack.pop
puts stack.pop