require_relative '../lib/stack'

describe Stack do
  it "creates an empty stack object" do
    stack = Stack.new

    expect(stack.empty?).to eq true
    expect(stack.size).to eq 0
  end

  it "adds an item to the end aka push" do
    stack = Stack.new

    stack.push("one item")

    expect(stack.empty?).to eq false
    expect(stack.size).to eq 1
  end

  it "returns the last item added, aka pop" do
    stack = Stack.new

    stack.push("first")
    stack.push("second")
    stack.push("third")

    expect(stack.pop).to eq "third"
  end

  it "iterates through the items and returns them in lifo order" do
    stack = Stack.new

    stack.push("first")
    stack.push("second")
    stack.push("third")

    items = []
    stack.each do |item|
      items << item
    end

    expect(items).to eq ["third", "second", "first"]
  end
end