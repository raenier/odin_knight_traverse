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

  def possible_positions(position = self.position)
    positions = []

    MOVES.each do |ymove, xmove|
      possible_y = position[0] + ymove
      possible_x = position[1] + xmove
      next if possible_x.negative? || possible_x > 7 || possible_y.negative? || possible_y > 7

      positions << [possible_y, possible_x]
    end

    positions
  end

  def traverse(yinput, xinput)
    return 'Invalid Input' unless yinput.is_a?(Integer) && xinput.is_a?(Integer)
  end
end
