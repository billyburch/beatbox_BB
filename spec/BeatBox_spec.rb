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

  it 'appends string data to object' do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    expect(bb.list.head.data).to eq("deep")
  end
  
  it 'returns next node data' do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    expect(bb.list.head.next_node.data).to eq("doo")
  end

  it 'appends nodes and returns count' do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    bb.append("woo hoo shu")
    bb.count
    expect(bb.count).to eq(6)
  end

  it 'appends nodes plays beats' do
    bb = BeatBox.new
    bb.append("deep doo ditt woo hoo shu")
    bb.count
    bb.play
    expect(bb.list.head.data).to eq("deep")
    expect(bb.count).to eq(6)
  end

end
