# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
   i = 0
   sum = 0
   while i<arr.length do
     sum += arr[i]
     i += 1
   end
   
    return sum
  
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort!
  case arr.length
  when 0
    0
  when 1
    arr[-1]
  else
    arr[-2] + arr[-1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if (arr.length == 0) 
    return false
  end
  
  arr.sort!
  left = 0
  right = arr.length-1 
  
  
  while (left < right)
    
    if arr[left] + arr[right] > n
      right -= 1
    elsif arr[left] + arr[right] < n
      left +=1
    else
      return true
    end
    
  end
  
  return false
  
 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
   return s =~ /\A[^AEIOU\W]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
 return  s =~ /\A[0-9]+/ && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price

def initialize(isbn, price)
    begin
    
      raise ArgumentError if isbn == ""
      raise ArgumentError if price <= 0
    end
    
    @isbn = isbn
    @price = price
      
end

def price_as_string
      @price_string = format("%.2f",@price).to_s
      return "$" + @price_string
end
end
