# Code Explanation
# These are examples of lambdas and aliasing method names in ruby. These are not first class functions. Ruby has first class functions via Procs.

# Procs vs. lambdas
# Lambdas are NOT objects, but they can be wrapped with Procs to make them first class functions.
# Difference between Proc and Lambda is in the logic flow. Procs serve as returns for the enclosing function. Code that comes directly after a lamba is executed after the lambda is complete.


module Kernel
  alias_method :a, :lambda
end


add = -> (a,b){a+b}
p add.call(1,2)


add = lambda{|a,b| a+b}
p add.call(2,3)

p a{ return 7}.call


# Drews-MacBook-Pro-4:ruby-tricks zizimaza$ ruby lambda.rb 
# 3
# 5
# 7
