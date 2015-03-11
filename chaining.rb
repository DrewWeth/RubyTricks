p ("a".."z").each_cons(2).map{|x| x.join("")}.select{|letters| letters.match /[aeiouy]/}
