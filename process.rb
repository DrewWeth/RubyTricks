## Spawn can spin up new processes and has crazy control over environment variables. This script returns the pid of the application created.

p pid = Process.spawn("pwd")


# Drews-MacBook-Pro-4:ruby-tricks zizimaza$ ruby process.rb 
# 10092
# /Users/zizimaza/ruby-tricks
