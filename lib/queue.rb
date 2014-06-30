class Queue

  def initialize
    @items = []
  end

  def empty?
    size == 0
  end

  def size
    @items.length
  end

  def enqueue(item)
    @items << item
  end

  def dequeue
    @items.shift
  end

  def each(&block)
    @items.each do |item|
      block.call(item)
    end
  end

end