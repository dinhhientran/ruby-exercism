=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix

  def initialize(lines)
    @rows = []
    @columns = []
    lines.split("\n").each_with_index do |line, rIndex|
      @rows.push line.split(' ').map{ |item| item.to_i }
      @rows[rIndex].each_with_index do |item, cIndex|
        @columns[cIndex] = @columns[cIndex].nil? ? [] : @columns[cIndex]
        @columns[cIndex][rIndex] = item.to_i
      end
    end
  end

  def rows
    @rows
  end

  def columns
    @columns
  end
end
