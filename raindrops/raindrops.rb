=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops

  def self.convert(number)
    result = Array.new(number){ |i| i+1 }.map { |n| number % n == 0 ? {3 => "Pling", 5 => "Plang", 7 => "Plong"}[n] : nil}.compact.join
    result == "" ? number.to_s : result
  end
end
