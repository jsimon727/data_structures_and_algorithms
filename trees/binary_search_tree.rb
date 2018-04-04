require 'pry'
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

    end
  end

  def is_binary?(check_values = [], node = self)
    unless node.value.nil?
      check_values << node.value
      return false if check_values.any? { |v| v < node.left.value }
      return false if check_values.any? { |v| v > node.right.value }

      if !node.left.nil?
        if node.left > node.value
          return false
        else
          is_binary?(check_values, node.left)
        end
      end

      if !node.right.nil?
        if node.right < node.value
          return false
        else
          is_binary?(check_values, node.right)
        end
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

#Node.print(tree)
Node.print(nil)

tree.is_binary?

