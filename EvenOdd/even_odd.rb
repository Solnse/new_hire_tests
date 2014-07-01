#!/usr/bin/env ruby

def split_numbers(file_name)
  even_ary = []
  odd_ary = []

  # open the file and read all numbers, put into an array.
  file = File.open(file_name, 'r')
  number_string = file.read
  numbers = number_string.split("\n")

  # convert each number to an integer and split even numbers into even_ary, odd into odd_ary.
  numbers.each do |number|
    number.to_i % 2 == 0 ? even_ary << number : odd_ary << number
  end
  
  # write even numbers to even.txt and odd to odd.txt
  even_file = File.open('even.txt', 'w')
  odd_file  = File.open('odd.txt', 'w')

  even_ary.each do |even_num|
    even_file.write even_num + "\n"
  end

  odd_ary.each do |odd_num|
    odd_file.write odd_num + "\n"
  end

  # great success.
  puts "great success!"
end

split_numbers('numbers.txt')
