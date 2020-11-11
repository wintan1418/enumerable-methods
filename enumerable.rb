module Enumerable





=begin
     #My_each
=end
    def my_each
       return self.dup unless block_given?
        i = 0
        until i == self.size
            yield  self[i]

            i += 1
        end
       self
    end


test_collect = ["goond","young", "lappy", "shangai"]


test_collect.my_each do |el|
    puts "The test array contains the nonsense #{el}"

    
end

=begin
     #My_each_with_index
=end 

    def my_each_with_index
      return self.dup unless block_given?
        i = 0 
        until i == self.size
            yield self[i]
            i +=1
        end
        self
    end



test_collect = [23,34,56,78,45]

 test_collect.my_each_with_index  do |el,index|
     puts "index: #{index} for #{el}" 
 
end


# My_Select


    def my_select
      return self.dup unless block_given?
        met_cond = []
        i = 0
        until i == self.size
            met_cond << yield(self[i])
            i +=1
        end
         met_cond
    end
end
test_collect = [23,34,56,78,45]

 test_collect.my_select {|num| 
 p num if num > 30 }

