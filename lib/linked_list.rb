class LinkedList
  attr_reader :head, :data
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
end