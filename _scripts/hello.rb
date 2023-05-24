greet = File.readlines("/home/sarah/Downloads/MKXP/mkxp-z_2.4.0/AdvBaysian/_scripts/_output/output.txt")

total_loop = greet.size.to_i

row = 0

total_loop.times do
  new_greeting = greet[row].to_s.tr "\n", ""

  p new_greeting; # sleep(1)

  row = row + 1
end
