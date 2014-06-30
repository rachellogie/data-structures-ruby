require_relative '../lib/queue'

describe Queue do

  it 'creates an empty queue' do
    queue = Queue.new
    expect(queue.empty?).to eq true
  end

  it 'enqueues - aka adds an item to the queue' do
    queue = Queue.new

    queue.enqueue("front")

    expect(queue.empty?).to eq false
    expect(queue.size).to eq 1
  end

  it 'dequeues - aka returns the item at the end of the queue' do
    queue = Queue.new

    queue.enqueue("first")
    queue.enqueue("second")
    queue.enqueue("third")

    expect(queue.dequeue).to eq "first"
  end

  it 'the each method returns all the items in FIFO order' do
    queue = Queue.new

    queue.enqueue("first")
    queue.enqueue("second")
    queue.enqueue("third")

    items = []
    queue.each do |item|
      items << item
    end

    expect(items).to eq ["first", "second", "third"]
  end
end