# This is a example to throw a 'stack overflow' error to show the power of the script "tail-call.rb"
def factorial(n, result =1)
  if n == 1
    result
  else
    factorial(n-1, n * result)
  end
end


p factorial(100000)
