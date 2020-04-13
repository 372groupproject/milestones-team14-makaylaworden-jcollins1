
def raise_and_rescue
  begin
    puts "Before raise statement"
    raise "An error was thrown by the raise statement"
    puts "After raise statement"
  rescue
    puts "Program was rescued"
  end
  puts "After the begin block is done"
end

raise_and_rescue

# rescue can have arguments which are exceptions to be rescued
