# frozen_string_literal: true

class Knight
  attr_accessor :position

  def initialize(start_position = [0, 0])
    self.position = start_position
  end
end
