# You can 'ignore' arguments with an underscore seen on line 5.

arr = ["a", "1", "#"]

[arr,arr,arr].each do |a,_,_|
  puts a
end


# Drews-MacBook-Pro-4:ruby-tricks zizimaza$ ruby ignore.rb
# a
# a
# a
