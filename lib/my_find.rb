require 'pry'

def my_find(collection)
    index = 0

    while index < collection.length
        return collection[index] if yield(collection[index])

        index += 1
    end
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 } 