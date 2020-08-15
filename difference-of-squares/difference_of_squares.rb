=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end

class Squares

  def initialize(n)
    @n = n
  end

  def square_of_sum
    Array.new(@n){ |i| i+1 }.sum ** 2
  end

  def sum_of_squares
    Array.new(@n){ |i| (i+1) ** 2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private
  def number_with_delimiter(number)
    number.reverse.scan(/.{1,3}/).map { |digits| digits.reverse }.reverse.join('_')
  end
end