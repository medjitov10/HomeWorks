require 'byebug'
require "byebug"
class Array

  # Monkey patch the Array class and add a my_inject method. If my_inject receives
  # no argument, then use the first element of the array as the default accumulator.

  def my_inject(accumulator = nil, &prc)
   if accumulator==nil
     accumulator = self[0]
     i=0
   else
     i=1
   end
    while i<length

      accumulator = prc.call(accumulator, self[i])
      i+=1
    end
    accumulator
  end
end

# primes(num) returns an array of the first "num" primes.
# You may wish to use an is_prime? helper method.

def is_prime?(num)
  (2...num).all?{|el| num%el!=0}
end

def primes(num)
  arr = []
  el = 2
  while arr.length<num
    arr << el  if is_prime?(el)
    el+=1
  end
  arr
end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1] if num <=1
  fac = factorials_rec(num-1)
  fac << fac.last * (num)
end

class Array

  # Write an Array#dups method that will return a hash containing the indices of all
  # duplicate elements. The keys are the duplicate elements; the values are
  # arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
    hash = Hash.new { |hash, key| hash[key] =[]  }
    self.each_with_index do |el,index|
      hash[el] << index
    end
    hash.select { |h,v| v.length>1  }
  end
end

class String

  # Write a String#symmetric_substrings method that returns an array of substrings
  # that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  def symmetric_substrings
    arr = []
    (0...self.length).to_a.each do |i|
      j=i+1
      while j<self.length
        arr << self[i..j] if self[i..j]==self[i..j].reverse && self[i..j].length >=2
        j+=1
      end
    end
    arr
  end
end

class Array

  # Write an Array#merge_sort method; it should not modify the original array.



    def merge
      return self if self.length <= 1
      mid = length / 2
      left = self.take(mid)
      right = self.drop(mid)
      sorted_left, sorted_right = left.merge , right.merge

      merge_helper(sorted_left, sorted_right)
    end


    def merge_helper(left, right)
      arr = []
      until right.empty? || left.empty?
        arr << ((right.first < left.first) ? right.shift : left.shift)
      end
      arr + left + right
    end
end
