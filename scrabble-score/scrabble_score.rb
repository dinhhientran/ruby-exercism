=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble

  LETTER_VALUES = {
    :AEIOULNRST => 1,
    :DG => 2,
    :BCMP => 3,
    :FHVWY => 4,
    :K => 5,
    :JX => 8,
    :QZ => 10
  }

  def initialize(input)
    @input = input
  end

  def self.letter_value(char)
    LETTER_VALUES.select { |key, value| key.to_s.chars.include?(char.upcase) }.values.sum
  end

  def score
    self.class.score(@input)
  end

  def self.score(input)
    return 0 if input.nil?
    input.chars.map { |char|  self.letter_value(char) }.sum
  end
end