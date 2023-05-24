require "naive_bayes"

# Reads in image text as input.
square   =   File.read("_input/square.txt").to_s
circle   =   File.read("_input/circle.txt").to_s
triangle = File.read("_input/triangle.txt").to_s

# Get the date.
system("date > _date/date.txt")

# Immutables
date             = File.read("_date/date.txt").strip
date_title       = date.tr " ", "_"

a = NaiveBayes.load("_data/imagery/image_recognition.nb") 

# Classify types of shapes.
square_result = a.classify(square)
circle_result = a.classify(circle)
triangle_result = a.classify(triangle)

this_square   = "#{square_result[0].to_s.tr '_', ' '}"
this_circle   = "#{circle_result[0].to_s.tr '_', ' '}"
this_triangle = "#{triangle_result[0].to_s.tr '_', ' '}"

puts "#{this_square}.
#{this_circle}.
#{this_triangle}."

open("_posts/input.md", "w") { |f|
  f.puts "## #{date_title}"

  f.puts "#{this_square}.

#{this_circle}.
#{this_triangle}."

}
