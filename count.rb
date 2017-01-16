x = File.open("board.rb")
y = x.readlines
z = 0
y.each do |i|
	if i.match("\n")
		z+=1
	end
end
puts "#{z} lines in file \"board.rb\"\."
