module Enumerable
  # Your code goes here
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
