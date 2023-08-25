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

  it 'adds data into node' do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.data).to eq("doop")
  end

  it 'adds show next_node as nil' do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.next_node).to eq(nil)
  end

  it 'returns number of nodes in list' do
    list = LinkedList.new
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it 'returns data in string'
  list = LinkedList.new
  list.append("doop")
    expect(list.to_string).to eq("doop")
end