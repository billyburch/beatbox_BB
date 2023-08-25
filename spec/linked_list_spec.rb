require "./lib/linked_list"
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

end