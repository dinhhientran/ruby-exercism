=begin
Write your code for the 'Gigasecond' exercise in this file. Make the tests in
`gigasecond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/gigasecond` directory.
=end

class Gigasecond
  GIGA_SECOND = 1000000000

  public
  def self.from(time)
    if time.instance_of?(Time)
      time + GIGA_SECOND
    else
      nil
    end
  end
end

