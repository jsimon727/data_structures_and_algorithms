require 'pry'

class Node
  def initialize(data, pointer = nil)
    @data = data
    @pointer = nil
  end

  def next?
    !@pointer.nil?
  end

  def set_pointer(node)
    @pointer = node
  end

  def get_pointer
    @pointer
  end

  attr_accessor :data
end

class LinkedList
  def initialize(data)
    @head = Node.new(data, nil)
  end

  def add_value(value)
    current_node = @head

    while current_node.next?
      current_node = current_node.get_pointer
    end

    current_node.set_pointer(Node.new(value))
  end

  def contains?(value)
    current_node = @head
    while current_node.next?
      return true if current_node.data == value
      current_node = current_node.get_pointer
    end

    false
  end

  def remove_duplicates
    current_node = @head
    previous_node = @head.get_pointer

    values = []
    while current_node.next?
      if values.include?(current_node.value)
        next_node = current_node.get_pointer
        previous_node.set_pointer = next_node
        previous_node = previous_node
      else
        values << current_node.value
        previous_node = current_node
      end

      current_node = current_node.get_pointer
    end
  end
end

#list = LinkedList.new(5)
#list.add_value(6)
#list.add_value(8)
#list.add_value(6)
#list.add_value(6)
#list.add_value(6)
#list.add_value(6)
#puts "BEFORE REMOVE #{list.inspect}"
#list.remove_duplicates
#puts "AFTER REMOVE #{list.inspect}"





