def shuffle_rules
  known_ruleset     = File.readlines("_rulesets/rules.txt")
  scrambled_ruleset = known_ruleset.shuffle

  open("_rulesets/scrambled_set.txt", "w") { |f|
    f.puts scrambled_ruleset
  }

  puts "Changing the ruleset to evaluate performance..."
end

# Basic Vortex procedure that automates within a defined trajectory.
def vortex_standard
  known_ruleset     = File.readlines("_rulesets/rules.txt")

  ## These are the rows.
  row_1 = 0
  row_2 = 1
  row_4 = 3
  row_8 = 7
  row_7 = 6
  row_5 = 4

  ## Performs standard subroutines.
  system("#{known_ruleset[row_1]}")
  system("#{known_ruleset[row_2]}")
  system("#{known_ruleset[row_4]}")
  system("#{known_ruleset[row_8]}")
  system("#{known_ruleset[row_7]}")
  system("#{known_ruleset[row_5]}")
  system("#{known_ruleset[row_1]}")
end

# A Tesla vortex that adapt to other correct conditions.
# def adaptive_vortex
# end

# Similar to basic vortex, except that an shuffled ruleset is used. Use with caution.
def vortex_shuffle
  scrambled_ruleset = File.readlines("_rulesets/scrambled_set.txt")

  ## These are the rows.
  row_1 = 0
  row_2 = 1
  row_4 = 3
  row_8 = 7
  row_7 = 6
  row_5 = 4

  ## Performs standard subroutines.
  system("#{scrambled_ruleset[row_1]}")
  system("#{scrambled_ruleset[row_2]}")
  system("#{scrambled_ruleset[row_4]}")
  system("#{scrambled_ruleset[row_8]}")
  system("#{scrambled_ruleset[row_7]}")
  system("#{scrambled_ruleset[row_5]}")
  system("#{scrambled_ruleset[row_1]}")
end

standard_procedure = true

if standard_procedure == true
  vortex_standard  # Follow standard preexisting ruleset.
else
  shuffle_rules    # If desired, shuffle ruleset. Otherwise comment out.
  vortex_shuffle   # Adapt to a randomized ruleset.
end
