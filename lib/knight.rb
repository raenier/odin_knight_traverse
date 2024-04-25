# frozen_string_literal: true

class Knight
  BOARD = [7, 7].freeze
  MOVES = [
    [2, 1],
    [2, -1],
    [1, 2],
    [1, -2],
    [-1, -2],
    [-1, 2],
    [-2, 1],
    [-2, -1]
  ].freeze

  attr_accessor :position

  def initialize(start_position = [0, 0])
    self.position = start_position
  end
end
