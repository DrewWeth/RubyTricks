
def sample(s, r, n)
    if n > s.length
        return
    end
    r[0,n] = s[0, n]
    #puts r.inspect

    (n+1).step(s.length,1) do |i|
        j = rand(1..i)
        #puts "i:#{i}, j:#{j} n:#{n}"
        if j <= n
            r[j-1] = s[i-1]
        end
        #puts r.inspect
    end

    #puts r.inspect
    return r
end

0.step(10) do |i|
    r = []
    s = [1,2,3,4]

    puts sample(s,r,2).inspect
end

