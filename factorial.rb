
def factorial(n, result =1)
  if n == 1
    result
  else
    factorial(n-1, n * result)
  end
end


p factorial(100000)
