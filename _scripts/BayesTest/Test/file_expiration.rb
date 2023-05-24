system('date --date="last friday" > _date/expiration_date/date.txt')

# Reads current date and expiration date.
current_date    = File.read("_date/current_date/date.txt").to_s
expiration_date = File.read("_date/expiration_date/date.txt").to_s

# If current_date is the same as day of expiration, delete file.
if current_date == expiration_date
  puts File.delete("test.txt")
else
  puts "File has not yet expired..." # Else file has not yet expired.
end
