# Chunk groups together consequtive elements that evaluate true within our block

(0..10).to_a.chunk{|x| x.integer?}.each{ |c, arr| p [c,arr] }

p "----"

(0..10).to_a.chunk{|x| x.even?}.each{ |c, arr| p [c,arr] }


# Drews-MacBook-Pro-4:ruby-tricks zizimaza$ ruby chunk.rb 
# [true, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]]
# "----"
# [true, [0]]
# [false, [1]]
# [true, [2]]
# [false, [3]]
# [true, [4]]
# [false, [5]]
# [true, [6]]
# [false, [7]]
# [true, [8]]
# [false, [9]]
# [true, [10]]
