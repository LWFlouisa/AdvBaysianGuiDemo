# File is created on the current day, which is the current date.
system('date --date="today" > _date/current_date/date.txt')

open("test.txt", "w") { |f|
  f.puts "Test"
}
