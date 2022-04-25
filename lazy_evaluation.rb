# Enter your code here. Read input from STDIN. Print output to STDOUT
require 'prime'

def palindrome?(str)
  str = str.to_s
  str == str.reverse
end

palindromic_prime = lambda do |n|
  1.upto(Float::INFINITY).lazy.select do |x|
    x if palindrome?(x) and x.prime?
  end.first(n)
end

n = gets.to_i
print palindromic_prime.call(n)
