require './lib/node'
require 'pry'
require 'rspec'

RSpec.describe 'Node' do
  it 'node exists as object' do
    node = Node.new("plop")
    expect(node).to be_a(Node)
  end

  it 'returns instance argument' do
    node = Node.new("plop")
    expect(node.data).to eq("plop")
  end

  it 'returns nil for next_node' do
    node = Node.new("plop") 
    expect(node.next_node).to eq(nil)
  end

  it 'next_node can change' do
    node = Node.new("plop")
    data = "bleep"
    node.next_node = data
    expect(node.next_node).to eq("bleep")
  end
end
