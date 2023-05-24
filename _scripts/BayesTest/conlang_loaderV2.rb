require "naive_bayes"

require 'humanist_errors'
include HumanistErrors

with_human_errors do
  # Get the date.
  system("date > _date/date.txt")

  # Immutables
  date             = File.read("_date/date.txt").strip
  date_title       = date.tr " ", "_"

  a = NaiveBayes.load('_data/language/bianca.nb') 

  ## Spam
  b = "BIANCA: La cabine braun es azeoir pedecise."

  result = a.classify(b)

  puts result

  open("_posts/input.md", "w") { |f|
    f.puts "## Results Of Conlang Test"
    f.puts result
  }
end
