puts "Enter the file you want to write into"
fname=gets
somefile=File.open(fname, "a")
somefile.puts "productid Category ProductName Cost Quantity"
somefile.puts "1          A         A1          100     100"

#aFile = File.new("input.txt", "r+"
somefile.close




