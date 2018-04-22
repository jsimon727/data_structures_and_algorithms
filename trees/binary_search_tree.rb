class Node
  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  def self.print(node)
    unless node.nil?
      print(node.left)
      puts node.value
      print(node.right)
    end
  end

  require 'pry'
  def is_binary?(node = self)
    if node.left.nil? && node.right.nil?
      return true
    else
      return true if node.left.nil? && is_binary?(node.right)
      return true if node.right.nil? && is_binary?(node.left)
      if node.left.value > node.value || node.right.value < node.value
        return false
      else
        return is_binary?(node.left) && is_binary?(node.right)
      end
    end
  end

  def insert(value)
    if value > self.value
      if self.right.nil?
        self.right = Node.new(value)
        return
      else
        self.right.insert(value)
      end
    else
      if self.left.nil?
        self.left = Node.new(value)
        return
      else
        self.left.insert(value)
      end
    end
  end
  attr_accessor :right, :left, :value
end


tree = Node.new(4)
tree.insert(6)
tree.insert(2)
tree.insert(5)
tree.insert(8)
tree.insert(10)
tree.insert(1)
tree.insert(2)
tree.insert(29)
tree.insert(9)
tree.insert(0)
tree.insert(38)

#Node.print(tree)
#Node.print(nil)

#node7 = Node.new(19)
#node6 = Node.new(21)
#node5 = Node.new(15, node6, node7)
#node4 = Node.new(10)
#node2 = Node.new(1, node4, node5)
#node3 = Node.new(9)
#tree = Node.new(2, node2, node3)

#node7 = Node.new(13)
#node6 = Node.new(14)
#node5 = Node.new(15, node6, node7)
#node4 = Node.new(10)
#node3 = Node.new(31)
#node2 = Node.new(11, node4, node5)
#tree = Node.new(22, node2, node3)

puts tree.is_binary?

#tree.insert(6)
#tree.insert(2)
#tree.insert(5)


