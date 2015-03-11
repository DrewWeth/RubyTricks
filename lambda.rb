
module Kernel
  alias_method :a, :lambda
end


add = -> (a,b){a+b}
p add.call(1,2)


add = lambda{|a,b| a+b}
p add.call(2,3)

p a{ return 7}.call
