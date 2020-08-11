=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  public
  def self.value(colors)
    (COLORS.index(colors[0]).to_s + COLORS.index(colors[1]).to_s).to_i
  end
end