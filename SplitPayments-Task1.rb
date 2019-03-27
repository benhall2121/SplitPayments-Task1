# Execute this file by opening the terminal and going to the folder that contains this file
# Then run: ruby SplitPayments-Task1.rb

puts "Split Payments - Task 1 - Ben Hall - benhall2121@yahoo.com"

@eval_strings = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"].each_with_index.to_h.merge(")" => "", "(" => "", "times" => "*","plus" => "+", "minus" => "-", "divided_by" => "/", "negative " => "-")

def eval_calculation(calc_string)
  return eval calc_string.gsub(Regexp.union(@eval_strings.keys), @eval_strings)
end

puts "six(times(five)) should return 30 and is #{eval_calculation('six(times(five))')}"
puts "one(plus(nine)) should return 10 and is #{eval_calculation('one(plus(nine))')}"
puts "six(minus(three)) should return 3 and is #{eval_calculation('six(minus(three))')}"
puts "eight(divided_by(two)) should return 4 and is #{eval_calculation('eight(divided_by(two))')}"
puts "negative six(plus(three)) should return -3 and is #{eval_calculation('negative six(plus(three))')}"
puts "eight(divided_by(negative 4)) should return -2 and is #{eval_calculation('eight(divided_by(negative 4))')}"