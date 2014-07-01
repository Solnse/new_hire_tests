#!/usr/bin/env ruby
# usage: ruby fizzbuzz 999 (where 999 is the total times, default = 100)

def fizzbuzz(number=100)
  number.times do |number|
    if number % 3 == 0 and number % 5 == 0
      puts "FizzBuzz"
    elsif number % 5 == 0
      puts "Buzz"
    elsif number % 3 == 0
      puts "Fizz"
    else
      puts number
    end
  end
end

fizzbuzz(100)
