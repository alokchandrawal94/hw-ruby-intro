# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0 
  if arr.empty?
    sum=0
  else
   arr.each do |value|
      sum = sum + value
    end
  end
  return sum 
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  len = arr.length()
  if arr.empty?
    return sum
  elsif len==1
    return arr[0]
  else
    arr= arr.sort()
    sum = arr[-1] +arr[-2]
  end
 return sum 
 end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sum = 0
  flag = 0
  if arr.empty?
     return false
  else 
    for num in (0...arr.length)
     for i in (num+1...arr.length)
       sum = 0
       sum = arr[num] + arr[i]
       if sum == n
         flag = 1
         break
       end
     end
     if flag == 1
       break
     end
   end
   end
   if flag == 1
     return true
   else
      return false
   end 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, '+name.to_s
end

def starts_with_consonant? s
    if (/[A-Za-z]/ =~ s) == 0
       if (/[aeiouAEIOU]/ =~ s) == 0
          return false
        else
          return true
        end
     else
      return false
    end 
       
      
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
   if s.empty?
     return false  
   elsif s !~ /[^01]/
     i = s.length()
     sum = 0
     s.split('').each { |c|
     i=i-1
     sum =sum + c.to_i * (2**i) 
     }
     if sum % 4 == 0
       return true
     else
       return false
     end
   else
     return false 
   end 

end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
     if isbn.empty? or price<= 0 
        raise ArgumentError, "Empty String"
     else
       @isbn = isbn
       @price = price
     end
  end
  def isbn=(new_name)
    @isbn=new_name
  end
  def isbn()
    @isbn
  end
  def price=(new_price)
    @price=new_price
  end
  def price()
    @price
  end
  def price_as_string()
     st = '%.2f' % @price
     return "$"+st
    end 
end



