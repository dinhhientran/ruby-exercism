=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

class HighScores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.sort.last
  end

  def personal_top_three
    @scores.sort {|a, b| b <=> a}.each_with_index.map {|score, index| score if index <= 2}.compact
  end

  def latest_is_personal_best?
    personal_best == latest
  end
end
