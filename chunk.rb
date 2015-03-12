# Chunk groups together consequtive elements that evaluate true within our block

(0..10).to_a.chunk{|x| x.integer?}.each{ |c, arr| p [c,arr] }

p "----"

(0..10).to_a.chunk{|x| x.even?}.each{ |c, arr| p [c,arr] }
