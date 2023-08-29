class BeatBox
    attr_reader :list
  def initialize
    @list = LinkedList.new
  end 

  def append(data)
    @list.append(data)
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r 50 -v Cello #{beats}`
  end
end