#!/usr/bin/env ruby
# usage: ruby fibonacci.rb 999  (where 999 is the limit)

$upto = ARGV[0].to_i

def fibonacci(upto)
  current = 1
  last = 0
  while current < upto
    puts current
    last, current = current, current + last
  end
end

fibonacci($upto)
