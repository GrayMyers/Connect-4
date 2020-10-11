class Board
  attr_reader :width, :height, :pieces
  def initialize(width,height,pieces = {empty: ".",x: "x",o: "o"})
    @width = width
    @height = height
    @pieces = pieces
    @columns = create_empty_columns
  end

  def board_string
    string = ""
    @columns.each do |key,value|
      value.each do |key2,value2|
        string += @pieces[value2] + " "
      end
      string += "\n"
    end
    string
  end

  def row_string
    letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    letters[0..(@width-1)]
  end

  def turn_string
    p turn_string = "#{row_string}\n\n#{board_string}"
  end

  private

  def create_empty_columns
    column_hash = {}
    @height.times do |row|
      row_hash = {}
      @width.times do |space|
        row_hash[space] = :empty
      end
      column_hash[row] = row_hash
    end
    column_hash
  end
end
