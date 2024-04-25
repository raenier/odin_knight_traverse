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

  def initialize(y_start = 0, x_start = 0)
    self.position = [y_start, x_start]
  end
end
