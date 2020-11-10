module Enumerable

    
    def my_each
       return self.dup unless block_given?
        i = 0
        until i == self.size
            yield  self[i]

            i += 1
        end
       self
    end
end

test_collect = [1, 10, 100, 1000, 10000, 100000]


test_collect.my_each do |el|
    puts "The test array contains the number #{el}"
end