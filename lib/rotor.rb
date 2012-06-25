class Rotor
  attr_accessor :name, :left

  def initialize (name, left)
    @name = name
    @left = left
  end
  
  def setPosition ( position )
    @position = position
  end
end