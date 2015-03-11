at_exit do
  if $! and not [SystemExit, Interrupt].include? $!.class
    puts "restarting"
    system "ruby #{$PROGRAM_NAME}"
  end
end

puts 1 / 0
