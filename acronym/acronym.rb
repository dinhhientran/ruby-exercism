=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym

  def self.abbreviate(words)
    words.split(/[ -]/).map{|word| /[a-zA-Z]/.match(word[0]) ? word[0].upcase : nil}.join()
  end
end
