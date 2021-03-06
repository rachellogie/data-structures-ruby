class Stack

  def initialize
    @items = []
  end

  def empty?
    size == 0
  end

  def size
    @items.length
  end

  def push(item)
    @items << item
  end

  def pop
    @items.pop
  end

  def each(&block)
    @items.reverse.each do |item|
      block.call(item)
    end
  end
end