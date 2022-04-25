def odd_or_even(number)
  number.even?
  # add your code here
end

(0...gets.to_i).each do |_i|
  puts odd_or_even(gets.to_i)
end
