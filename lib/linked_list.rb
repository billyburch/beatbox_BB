require 'pry'

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
    return 0 if !@head
    node = @head
    counter = 0
    while node do
      node = node.next_node
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
    return list_data.join(" ")
  end

  def prepend(data)
    node = Node.new(data)
    node.next_node = head
    @head = node
  end

  def insert(index, data)
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

  # def find(node_position, how_many)
  #   current_node = @head
  #   count = 0
  #   node = Node.new(data)  
  # end
end