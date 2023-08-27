class Node
  attr_accessor :data, :next_node
  def initialize(data, next_node = nil)
    @data = data
    @next_node = nil
  end 

  def tail?
    next_node.nil?
  end 

end