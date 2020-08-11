class ResistorColor
  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

  public
  def self.color_code(color)
    return COLORS.include?(color) ? COLORS.index(color) : nil
  end
end