# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  rtn = 0
  arr.each do |a| 
	  rtn += a 
  end
  rtn
end

def max_2_sum arr
	arr.max(2).sum
end

def sum_to_n? arr, n
	return false if arr.empty? || arr.nil?

	x = arr.combination(2).select {|x, y| x + y == n}

	return false if x.nil? || x.empty?

	return true
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
