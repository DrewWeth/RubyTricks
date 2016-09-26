# Gets the total change from an input file of transaction values
fin = File.open("change.txt")
input = fin.read
total = 0.0
lines = input.split("\n").each do |line|
    period = line.index(".")
    remainder = line[period, line.length] unless period == nil
    period ||= 0.0
    total += remainder.to_f

end

puts "$#{total} from #{lines.count} transactions"
