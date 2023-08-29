require "./lib/BeatBox"
require "./lib/linked_list"
require "./lib/node"
require 'pry'
require 'rspec'

RSpec.describe 'Node' do

  it 'bb exists as object' do
    bb = BeatBox.new
    expect(bb).to be_a(BeatBox)
  end

  it 'bb has list data and head' do
    bb = BeatBox.new
    expect(bb.list).to be_a(LinkedList)
  end
  
  it 'bb returns head = nil' do
    bb = BeatBox.new
    expect(bb.list.head).to eq(nil)
  end

end

# class w/in a class - within BeatBox, I have access to everything in LinkedList and can utilize that here