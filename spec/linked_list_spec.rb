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

  # This is where the last block of iteration 1 gets tricky. Below two blocks are relevant to the one node Linked List. 

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
    expect(list).to be_a(LinkedList)
  end

  it 'returns head data argument' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.head.data).to eq("doop")
  end

  it 'returns most recent data argument' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
  end

  it 'returns number of nodes in list' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
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

  it 'prepend adds to front of list' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.to_string).to eq("dop plop suu")
  end

  it 'returns number of nodes in list' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.count).to eq(3)
  end

  it 'inserts data into list' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    expect(list.to_string).to eq("dop woo plop suu")
  end

  it 'inserts data into different index' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(2, "woo")
    expect(list.to_string).to eq("dop plop woo suu")
  end

  it 'populates list with different methods' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.prepend("deep")
    list.insert(1, "woo")
    list.append("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
  end
 
  it 'finds and returns desired node data' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.prepend("deep")
    list.insert(1, "woo")
    list.append("blop")
    expect(list.find(2, 1)).to eq("shi")
  end

  it 'finds and returns desired node data' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.prepend("deep")
    list.insert(1, "woo")
    list.append("blop")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  it 'returns true if node data exists' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.prepend("deep")
    list.insert(1, "woo")
    list.append("blop")
    expect(list.includes?("deep")).to eq(true)
  end

  it 'returns false if node data does not exist' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.prepend("deep")
    list.insert(1, "woo")
    list.append("blop")
    expect(list.includes?("dep")).to eq(false)
  end

  it 'returns false if node data does not exist' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.prepend("deep")
    list.insert(1, "woo")
    list.append("blop")
    expect(list.includes?("dep")).to eq(false)
  end
  
  it 'removes and returns last node' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.prepend("deep")
    list.insert(1, "woo")
    list.append("blop")
    expect(list.pop).to eq("blop")
  end

  it 'removes and returns last node' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.prepend("deep")
    list.insert(1, "woo")
    list.append("blop")
    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")
  end

  it 'returns remaining nodes' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.prepend("deep")
    list.insert(1, "woo")
    list.append("blop")
    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")    
    expect(list.to_string).to eq("deep woo shi")
  end

  it 'returns list reflective # of pops in test' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.prepend("deep")
    list.insert(1, "woo")
    list.append("blop")
    expect(list.pop).to eq("blop")
    expect(list.to_string).to eq("deep woo shi shu")
  end
end