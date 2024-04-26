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

    queue = possible_positions
    given_position = [yinput, xinput]
    parents = {}
    parents[position] = possible_positions

    until queue.empty?
      current_position = queue.shift
      return recreate_path(current_position, parents) + given_position if current_position == given_position

      parents[current_position] = possible_positions(current_position)
      queue += parents[current_position]
    end
  end

  def recreate_path(current_position, parents)
    path = []
    until current_position == position
      parents.each do |parent, children|
        if children.include? current_position
          current_position = parent
          parents.delete parent
          path << current_position
          #if found break out of this loop do not loop further
          break
        end
      end
    end
    path.reverse
  end
end
