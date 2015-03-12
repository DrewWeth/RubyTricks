# .each_cons groups consequtive elements together, they are then joined and only combinations including vowels are printed.

p ("a".."z").each_cons(2).map{|x| x.join("")}.select{|letters| letters.match /[aeiouy]/}



# Drews-MacBook-Pro-4:ruby-tricks zizimaza$ ruby chaining.rb
# ["ab", "de", "ef", "hi", "ij", "no", "op", "tu", "uv", "xy", "yz"]
