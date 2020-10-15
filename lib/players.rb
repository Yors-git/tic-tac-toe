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

  def valid_name?
    @name.length >= 1
  end
end
