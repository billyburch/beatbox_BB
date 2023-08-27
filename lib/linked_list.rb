class LinkedList
  attr_accessor :head, :data
  def initialize
    @head = nil
    @data = data
  end

  def append(data)
    @head = Node.new(data)
  end 

  def count
    if head == nil
        0    
    else
        1
    end
  end

  def to_string
    p self.head.data
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end
end