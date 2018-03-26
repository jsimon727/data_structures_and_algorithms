require 'pry'
require 'set'

class Node
  def initialize(data, pointer = nil)
    @data = data
    @pointer = nil
  end

  attr_accessor :data

  def next?
    !@pointer.nil?
  end

  def set_pointer(node)
    @pointer = node
  end

  def get_pointer
    @pointer
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def print_values
    current_node = @head
    while current_node
      puts current_node.data
      current_node = current_node.get_pointer
    end
  end

  def contains?(value)
    return false if @head.nil?
    current_node = @head
    while current_node
      return true if current_node.data == value
      current_node = current_node.get_pointer
    end

    false
  end

  def length
    current_node = @head

    counter = 0
    while current_node
      counter = counter + 1
      current_node = current_node.get_pointer
    end
    counter
  end

  def add_value(value)
    if !@head
      @head = Node.new(value)
    else
      current_node = @head
      while current_node.next?
        current_node = current_node.get_pointer
      end
      current_node.set_pointer(Node.new(value))
    end
  end

  def remove_duplicates
    current_node = @head
    previous_node = @head.get_pointer

    #values = ::Set.new
    values = []
    while current_node.next?
      if values.include?(current_node.data)
        next_node = current_node.get_pointer
        previous_node.set_pointer(next_node)
        previous_node = previous_node
      else
        values << current_node.data
        #values.add(current_node.data)
        previous_node = current_node
      end

      current_node = current_node.get_pointer
    end

    if values.include?(current_node.data)
      previous_node.set_pointer(nil)
    end
  end
end

#list = LinkedList.new(5)

#for i in 1...10
  #list.add_value(i)
#end

#list.add_value(8)
#puts "BEFORE REMOVE #{list.print_values}"
##start = Time.now
##puts "TIME START #{Time.now}"
#list.remove_duplicates
##tend = Time.now
##puts "TIME END #{tend - start}"
#puts "AFTER REMOVE #{list.print_values}"

class HashSet
  def initialize(size = 11)
    @size = size
    @arr = []
    size.times do
      @arr << LinkedList.new
    end
  end

  def insert(value)
    index = value % size
    list = value(index)
    list.add_value(value) if !list.contains?(value)
  end

  def value(key)
    arr[key]
  end

  def print_values
    arr.map do |list|
      list.print_values
    end
  end

  def lengths
    arr.map do |list|
      list.length
    end
  end

  private

  attr_reader :size, :arr

  def handle_collision(value, index)
    list = arr[index]
    list.add_value(value) if !list.contains?(value)
  end
end

#list = LinkedList.new
#list.add_value(2)
#puts list.contains?(2)

hash_set = HashSet.new
[0,2,4,6,9,10,11].each do |num|
  hash_set.insert(num)
end

hash_set.insert(22)
hash_set.insert(2)
hash_set.insert(8)

#puts hash_set.lengths
hash_set.print_values
#puts hash_set.value(0).inspect
#puts map[1].inspect
#puts map[10].inspect
