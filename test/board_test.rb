require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/board.rb'

class BoardTest < Minitest::Test
  attr_accessor :board, :board_string
  def setup
    @empty_board_string = ". . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n"
    @board = Board.new(7,6)
  end

  def test_it_exists
    assert_instance_of Board, @board
  end

  def test_it_has_attributes
    piece_hash = {empty: ".",x: "x",o: "o"}
    assert_equal 7, @board.width
    assert_equal 6, @board.height
    assert_equal piece_hash, @board.pieces
  end

  def test_it_prints_board
    assert_equal empty_board_string, @board.board_string
  end
end
