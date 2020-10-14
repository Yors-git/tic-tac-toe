# rubocop: disable Style/Documentation
# frozen_string_literal: true

class Player
  attr_accessor :name, :mark
  def initialize(name)
    @name = name
  end

  def player1_mark
    @mark = 'O'
  end

  def player2_mark
    @mark = 'X'
  end
end

# rubocop: enable Style/Documentation
