class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

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
    return 0 if !head
      current_node = head
      counter = 0
    while current_node do
      current_node = current_node.next_node
      counter += 1
    end
      counter
  end

  def to_string
    list_data = []
    current_node = head
      while (!current_node.next_node.nil?)
        list_data << current_node.data
        current_node = current_node.next_node
      end
        list_data << current_node.data
        list_data.join(" ")
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = head
    @head = new_node
  end

  def insert(index, data)
    return "no list" if !head
    current_node = head
    current_index = 0
    next_node_index = 1
      while next_node_index != index do
        current_node = current_node.next_node
        current_index += 1
        next_node_index += 1
      end
    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def find(index, nodes_returned)
    return "no list" if !head
      current_node = head
      current_index = 0
      find_result = []
        while current_index != index do
          current_index += 1
          current_node = current_node.next_node      
        end
      nodes_returned.times do
      find_result << current_node.data
      current_node = current_node.next_node
    end
    find_result.join(" ")
  end
  
  def includes?(data)
    return "no list" if !head
    current_node = head
      if current_node.data == data
        return true
      end
    current_node = current_node.next_node
    false
  end
 
end