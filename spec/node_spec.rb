require "./lib/node"
require "pry"
require 'rspec'

RSpec.describe 'Node' do
  it 'exists' do
    node = Node.new("plop")
    expect(node).to be_a(Node)
  end
end