# There are delegate methods such as at_exit that is executed at the end of a script. This script executes itself on an error, allowing it to never die.
at_exit do
  if $! and not [SystemExit, Interrupt].include? $!.class # If we aren't purposely ending the script, then...
    puts "restarting"
    system "ruby #{$PROGRAM_NAME}" # Restarts itself
  end
end

puts 1 / 0 # Throws an error and triggers at_exit
