# Inject puts a binary operator inbetween all elements within an enumerable. It adds all the numbers up between 1 and 10 (=55)
p (1..10).inject{ |r,e| r + e}


# Drews-MacBook-Pro-4:ruby-tricks zizimaza$ ruby inject.rb
# 55
