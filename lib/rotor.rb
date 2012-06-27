require './lib/mappings.rb'

class Rotor
  include Mappings
  attr_accessor :name
  def initialize name
    @name = name
  end
  
  def setPosition(position)
    @position = alphabet[position]
  end
  
  def convert (letter)
    inputIndex = alphabet[letter]
    shiftedIndex = (inputIndex + @position) %26
    convertedIndex = convertMappings[@name][shiftedIndex]
    alphabet[((26 - @position) + convertedIndex) %26] 
  end
end