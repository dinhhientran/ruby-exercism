=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays
  VERSES = [
    ['first', 'a Partridge in a Pear Tree'],
    ['second', 'two Turtle Doves'],
    ['third', 'three French Hens'],
    ['fourth', 'four Calling Birds'],
    ['fifth', 'five Gold Rings'],
    ['sixth', 'six Geese-a-Laying'],
    ['seventh', 'seven Swans-a-Swimming'],
    ['eighth', 'eight Maids-a-Milking'],
    ['ninth', 'nine Ladies Dancing'],
    ['tenth', 'ten Lords-a-Leaping'],
    ['eleventh', 'eleven Pipers Piping'],
    ['twelfth', 'twelve Drummers Drumming'],
  ]

  def self.song
    verses = []
    VERSES.each do |verse| verses.push([
         "On the #{verse[0]} day of Christmas my true love gave to me",
         if verses.last.nil?
           "#{verse[1]}."
         else
           "#{verse[1]}#{verses.length == 1 ? ', and ' : ', '}#{verses.last[1]}"
         end
       ])
    end
    verses.map { |verse| verse.join(': ') }.join("\n\n")
  end
end