=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock

  def initialize(options = {})
    @hour = options.include?(:hour) ? options.fetch(:hour).to_i : 0
    @minute = options.include?(:minute) ? options.fetch(:minute).to_i : 0
    calculate
  end
  
  def hour
    @hour
  end

  def minute
    @minute
  end

  def +(clock) 
    @hour += clock.hour
    @minute += clock.minute
    calculate
    self
  end

  def -(clock)
    @hour -= clock.hour
    @minute -= clock.minute
    calculate
    self
  end

  def ==(clock)
    @hour == clock.hour && @minute == clock.minute
  end

  def to_s
    (@hour < 10 ? "0#{@hour}" : @hour.to_s) + ":" + (@minute < 10 ? "0#{@minute}" : @minute.to_s)
  end

  private
  def calculate
    @hour += @minute.to_i / 60
    @hour = @hour % 24
    @minute = @minute.to_i % 60
  end

end

