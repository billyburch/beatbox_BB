require './lib/linked_list'
require './lib/node'
require 'pry'
require 'rspec'

RSpec.describe 'Node' do
  
  it 'list exists as object' do
    list = LinkedList.new
    expect(list = LinkedList.new).to be_a(LinkedList)
  end

  it 'returns nil for list.head' do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end

  it 'shows list.head returns a node' do
    list = LinkedList.new
    list.append("doop")
    expect(list.head).to be_a(Node)
  end

  it 'adds data into node and returns' do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.data).to eq("doop")
  end

  it 'adds show next_node as nil' do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.next_node).to eq(nil)
  end

  # This is where the last block of iteration 1 gets tricky. Below two blocks are relevant to the one node Linked List. 

  it 'returns number of nodes in list' do
    list = LinkedList.new
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it 'returns data in string' do
    list = LinkedList.new
    list.append("doop")
    # binding.pry
    expect(list.to_string).to eq("doop")
  end

# Beginning in the block below, we will move into multiple nodes.

  it 'returns two nodes' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    binding.pry
    expect(list.head.data).to eq("doop")
  end
end