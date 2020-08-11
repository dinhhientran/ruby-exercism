=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming

  def self.compute(dna1, dna2)
    raise ArgumentError.new if dna1.length != dna2.length
    dna1.chars.map.with_index { |na, i| na if dna2.chars[i] != na }.compact.count
  end
end