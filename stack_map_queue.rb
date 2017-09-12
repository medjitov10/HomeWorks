class Stack

  def initialize
    # create ivar to store stack here!
    @stack=[]
  end

  def add(el)
    # adds an element to the stack
    @stack.push(el)
    el
  end

  def remove
    # removes one element from the stack
    @stack.pop
  end

  def show
    # return a copy of the stack
    @stack.dup
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el)
    el
  end
  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    if key_not_exit?(key)
      @map << [key, value]
    else
      @map.each_with_index do |pair, index|
        @map[index][1] = value if pair.first == key 
      end
    end
      [key, value]
  end
  def lookup(key)
    @map.each do |pair|
      return pair if pair.first == key
    end
  end
  def remove(key)
    @map.each_with_index do |pair, index|
      return @map=@map[0...index]+@map[index+1..-1] if pair.first == key
    end
  end

  def show
    @map.dup
  end

  def key_not_exit?(key)
    @map.all? do |pair|
      pair.first!=key
    end
  end

end
