require './lib/mappings.rb'

class Rotor
  include Mappings
  attr_accessor :name, :position, :left
  def initialize name, left = nil
    @name = name
    @left = left
  end
  
  def setPosition(letter)
    @position = letter
  end
  
  def convert (letter)
    inputIndex = alphabet[letter]
    shiftedIndex = (inputIndex + alphabet[@position]) %26
    convertedIndex = convertMappings[@name][shiftedIndex]
    alphabet[((26 - alphabet[@position]) + convertedIndex) %26] 
  end
  
  def reverse (letter)
    inputIndex = alphabet[letter]
    shiftedIndex = (inputIndex + alphabet[@position]) %26
    convertedIndex = reverseMappings[@name][shiftedIndex]
    alphabet[((26 - alphabet[@position]) + convertedIndex) %26]
  end
  
  def shift ()
    if @position == "Z"
      @position = "A"
      @left.shift()
    else
      @position = @position.succ
    end
    
  end
  
  

end