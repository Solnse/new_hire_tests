# The array below represents a 'bucket' of unsorted fruit.
bucket = ["orange", "plum", "strawberry", "blueberry", "strawberry", "apple", "peach", "orange", "grape", "apple", "peach", "strawberry", "peach", "peach", "apple", "apple", "apple", "apple", "strawberry", "strawberry", "blueberry", "orange", "apple", "strawberry", "apple", "peach", "peach", "peach", "grape", "apple", "blueberry", "strawberry", "strawberry", "blueberry", "orange", "peach", "orange", "strawberry", "apple", "orange", "peach", "strawberry", "grape", "strawberry", "apple", "plum", "strawberry", "apple", "peach", "orange", "grape", "apple", "peach", "strawberry", "blueberry", "blueberry", "grape", "blueberry", "strawberry", "strawberry", "strawberry", "peach", "strawberry", "strawberry", "blueberry", "strawberry", "strawberry", "strawberry", "peach", "apple", "peach", "grape", "blueberry", "grape", "apple", "peach", "apple"] 

# Your task is to write a Ruby program that counts each type of fruit in the array and displays the count results in a hash.  The
# keys of the hash should be the name of the fruit being counted, and the values should be the total count of that type of fruit.
# For instance, given an array like this:
# ['apple', 'apple', 'orange', 'grape', 'grape', 'strawberry', 'strawberry' 'strawberry']

# The resulting hash should look like this:
# {'apple' => 2, 'orange' => 1, 'grape' => 2,  'strawberry' => 3}

require 'json'

def count_fruit(bucket)
  fruits = {}
  bucket.each do |fruit|
    if fruits.include?(fruit)
      fruits[fruit] += 1
    else
      fruits[fruit] = 1
    end
  end

  # I know it wasn't asked for, but lets sort it descending.
  fruits = fruits.sort {|row_a, row_b| row_b[1] <=> row_a[1]}
  puts fruits.to_h
end

count_fruit(bucket)
