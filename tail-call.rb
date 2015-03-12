# This script turns tail-end cursion optimization ON and turns OFF the memory of each instruction allowing crazy recursive scripts to run without 'stack overflow errors' and crazy long processing times.


RubyVM::InstructionSequence.compile_option = { tailcall_optimization: true, trace_instruction: false }

eval <<end
  def factorial(n, result =1)
    if n == 1
      result
    else
      factorial(n-1, n * result)
    end
  end
end

p factorial(100000)


# Drews-MacBook-Pro-4:ruby-tricks zizimaza$ time ruby tail-call.rb
# 282422940796034787429...
#
# real	0m16.106s
# user	0m11.647s
# sys	0m3.635s
