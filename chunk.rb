(0..10).to_a.chunk{|x| x.integer?}.each{ |c, arr| p [c,arr] }
