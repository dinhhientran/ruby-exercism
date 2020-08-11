=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase

  def initialize(str)
    @str = str
  end

  def word_count
    words = @str.scan(/[a-zA-Z0-9, ']/).join.downcase.split(/[ ,]/).map { |w| w.match?(/'[0-9a-z]+'/) ? w.scan(/[0-9a-z]/).join : w }.reject { |w| w == "" }
    words.to_h {|word| [word, words.count(word)]}
  end
end

