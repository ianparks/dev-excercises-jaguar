class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  # 
  def self.marklar(str)
    arr = str.split(" ")
    arr.each_with_index { |w,i| 
      if w.length >4
          if w =~ /^[A-Z]/ 
              arr[i].replace('Marklar')
          else
              arr[i].replace('marklar')
          end
      end
    }
    puts str = arr.join(" ")
  end
  
  marklar("I Decided to educate Myself in the ruby Programing language")

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
   
def self.even_fibonacci(nth)
  f = lambda { |x| x < 2 ? x : f.call(x-1) + f.call(x-2) }
  sum = 0
  i = 0
  while i < nth  do
      n = f.call(i+1)
      i +=1
      if n.even?
          sum +=n
      end
  end
  puts sum
end

def even?
  self%1==0 && self.to_i.even?
end
even_fibonacci(35)
