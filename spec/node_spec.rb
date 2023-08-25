require './lib/node'
require 'pry'
require 'rspec'

RSpec.describe 'Node' do
  it 'exists' do
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

end
