class Rotor
  attr_accessor :name, :position
  def initialize name
    @name = name
  end
  
  def setPosition(position)
    @position = position
  end
end