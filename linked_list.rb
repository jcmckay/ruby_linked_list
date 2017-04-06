require './node.rb'

class LinkedList

  attr_accessor :head

  def initialize(val)
    @head = Node.new(val, nil)
  end

  def add_node(val)
    new_node = Node.new(val, nil)
    current = @head

    while current.next != nil
      current = current.next
    end

    current.next = new_node

  end

  def delete_node(val)
    return @head = @head.next if @head.val == val && @head.next != nil
    return puts 'node does not exist' if @head.next == nil

    current = @head

    while current.next.val != val
      current = current.next
    end

    node_to_delete = current.next
    current.next = node_to_delete.next
  end

end