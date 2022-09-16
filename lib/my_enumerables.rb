module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0
    while i < length
      yield self[i], i
      i += 1
    end
    self
  end

  def my_select
    i = 0
    list = []
    while i < length
      list << self[i] if yield self[i]
      i += 1
    end
    list
  end

  def my_all?
    i = 0
    while i < length
      return false unless yield self[i]

      i += 1
    end
    true
  end

  def my_any?
    i = 0
    while i < length
      return true if yield self[i]

      i += 1
    end
    false
  end

  def my_none?
    i = 0
    while i < length
      return false if yield self[i]

      i += 1
    end
    true
  end

  def my_count
    i = 0
    if block_given?
      counts = 0
      while i < length
        counts += 1 if yield self[i]
        i += 1
      end
      counts
    else
      length
    end
  end

  def my_map
    i = 0
    list = []
    while i < length
      val = yield self[i]
      list << val
      i += 1
    end
    list
  end

  def my_inject; end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    # Define my_each here
    i = 0
    while i < length
      yield self[i]
      i += 1
    end
    self
  end
end
