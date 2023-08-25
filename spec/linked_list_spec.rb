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
  
  it 'adds data into node' do
    list = LinkedList.new
    list.append("doop")
    # binding.pry
    expect(list.head.data).to eq("doop")
  end
  
  it 'adds show next_node as nil' do
    list = LinkedList.new
    list.append("doop")
    # binding.pry
    expect(list.head.data).to eq("doop")
  end
end