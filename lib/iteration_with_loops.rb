
require pry
def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
end


total = 0
row_index = 0
while row_index < src do
  element_index = 0
  while element_index < src[row_index].count do
    total += src[row_index][element_index]
    element_index += 1
  end
  row_index += 1
end
total 
binding.pry

require 'spec_helper'

mixed_data_1 = [
  ["The", 4, "quick"],
  [-1, "brown", "fox", 30],
  ["studied", 101, 233, "Ruby"]
]

mixed_data_2 = [
  ["Turning", "and", "turning", "in", "the", "widening", "gyre"],
  ["The", "falcon", "cannot", "hear", "the", "falconer;"],
  ["Things", "fall", "apart;", "the", "centre", "cannot", "hold"]
]

describe "Write a method called \"join_nested_strings\"" do
  describe "that takes in an Array of Arrays containing Integers and Strings" do
    it "returns a single combined string of all strings in the data structure" do
      expect(join_nested_strings(mixed_data_1)).to match(/The quick brown fox studied Ruby/)
      expect(join_nested_strings(mixed_data_2)).to match(/Turning and turning in the widening gyre The falcon cannot hear the falconer; Things fall apart; the centre cannot hold/)
    

