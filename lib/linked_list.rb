class LinkedList
  attr_accessor :head, :data
  def initialize
    @head = nil
    @data = data
  end

  # def append(data)
  #   @head = Node.new(data)
  # end 

  def append(data)
    if(head.nil?)
      @head = Node.new(data, nil)
    else
      last_node = @head
      while(!last_node.next_node.nil?)
        last_node = last_node.next_node
      end
      last_node.next_node = Node.new(data, nil)
    end
  end 

  def count
    if head == nil
        0    
    else
        1
    end
  end

  def to_string
    p @head.data
  end

  # def last_node(node)
  #   return node if node.tail?
  #   last_node(node.next_node)
  # end
end