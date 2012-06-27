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
  
  def reverse (letter)
    inputIndex = alphabet[letter]
    puts(inputIndex)
    shiftedIndex = (inputIndex + @position) %26
    puts(shiftedIndex)
    convertedIndex = reverseMappings[@name][shiftedIndex]
    puts(convertedIndex)
    puts(((26 - @position) + convertedIndex) %26)
    alphabet[((26 - @position) + convertedIndex) %26]
  end
  
end