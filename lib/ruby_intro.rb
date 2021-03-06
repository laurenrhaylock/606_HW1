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
  return "Hello, " + name 
end

def starts_with_consonant? s
  return true if s =~ /\A(?=[^aeiou])(?=[a-z])/i

  return false
end

def binary_multiple_of_4? s
  return false if s !~ /^[0-1]*$/

  if (s =~ /100$/ || (s.length == 1 && s[0].to_i == 0))
	 return true
  else 
	 return false
  end 
	
end

# Part 3

class BookInStock
       attr_accessor :isbn, :price

       def initialize(isbn, price)
	       if isbn.empty?
		       raise ArgumentError, 'ISBN is empty'
	       else 
	               @isbn = isbn
	       end

	       if price.to_i <= 0
		       raise ArgumentError, 'Invalid price'
	       else 
	               @price = price
	       end
	end

	def price_as_string
		price = ""
		if @price.to_s =~ /^[0-9]*\.[0-9][0-9]$/
			#price just need $
			price = "$" + @price.to_s
		elsif @price.to_s =~ /^[0-9]*\.[0-9]$/
			#price ends in dot and one decimal, add 0 to end
			price = "$" + @price.to_s + "0"
		else
			#price has no decimals, needs .00
			price = "$" + @price.to_s + ".00"
		end

		return price
	end	
end
