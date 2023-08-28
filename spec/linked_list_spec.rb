require './lib/linked_list'
require './lib/node'
require 'pry'
require 'rspec'

RSpec.describe 'Node' do
  
  it 'list exists as object' do
    list = LinkedList.new
    expect(list).to be_a(LinkedList)
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

  it 'shows next_node as nil' do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.next_node).to eq(nil)
  end

  # This is where the last block of xiteration 1 gets tricky. Below two blocks are relevant to the one node Linked List. 

  it 'returns number of nodes in list' do
    list = LinkedList.new
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it 'returns data in string' do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_string).to eq("doop")
  end

# Beginning in the block below, we will move into multiple nodes.

  it 'still returns list as object' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    # binding.pry
    expect(list).to be_a(LinkedList)
  end

  it 'returns head data argument' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    # binding.pry
    expect(list.head.data).to eq("doop")
  end

  it 'returns most recent data argument' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    # binding.pry
    expect(list.head.next_node.data).to eq("deep")
  end

  it 'returns number of nodes in list' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    # binding.pry
    expect(list.count).to eq(2)
  end
  
  it 'returns all data in string' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.to_string).to eq("doop deep")
  end

  it 'returns list object' do
    list = LinkedList.new
    expect(list).to be_a(LinkedList)
  end

  it 'returns argument data' do
    list = LinkedList.new
    list.append("plop")
    expect(list.to_string).to eq("plop")
  end

  it 'returns joined argument data' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    expect(list.to_string).to eq("plop suu")
  end
end