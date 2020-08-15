=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

class Tournament

  def self.tally(input)
    teams = {}
    input.strip.split("\n").map { |match| match.split(";") }.each do |match|
      teamA = self.fetch_team(teams, match[0].strip)
      teamB = self.fetch_team(teams, match[1].strip)

      result = self.add_result(teamA, match[2].strip, teamB)

      teams.store(match[0].strip, result[:teamA])
      teams.store(match[1].strip, result[:teamB])
    end

    teams = teams.sort_by { |name, team| [team[:p]*-1, name] }.to_h
    generate_result_table(teams)
  end

  private

  def self.fetch_team(teams, name)
    teams.key?(name) ? teams.fetch(name) : {:mp => 0, :w => 0, :d => 0, :l => 0, :p => 0}
  end

  def self.add_result(teamA, result, teamB)
    case result
    when "win"
      teamA[:mp] += 1
      teamA[:w] += 1
      teamA[:p] += 3
      teamB[:mp] += 1
      teamB[:l] += 1
    when "draw"
      teamA[:mp] += 1
      teamA[:d] += 1
      teamA[:p] += 1
      teamB[:mp] += 1
      teamB[:d] += 1
      teamB[:p] += 1
    when "loss"
      teamA[:mp] += 1
      teamA[:l] += 1
      teamB[:mp] += 1
      teamB[:w] += 1
      teamB[:p] += 3
    end
    {:teamA => teamA, :teamB => teamB}
  end

  def self.generate_result_table(teams)
    table = ["    Team                           | MP |  W |  D |  L |  P"]
    fields = %w[mp w d l p]
    teams.each_pair do |name, result|
      table.push("    #{name}#{Array.new(31-name.length).map{|w| " "}.join}|  #{fields.map { |field| result.fetch(field.to_sym) }.join(' |  ')}")
    end
    table.join("\n").concat("\n")
  end
end