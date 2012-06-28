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
    runThroughRotors letter, convertMappings
    
  end
  
  def reverse (letter)
    runThroughRotors letter, reverseMappings
  end
  
  def runThroughRotors(letter, mappings)
    inputIndex = alphabet[letter]
    shiftedIndex = (inputIndex + alphabet[@position]) %26
    convertedIndex = mappings[@name][shiftedIndex]
    puts "#{letter} -> #{alphabet[((26 - alphabet[@position]) + convertedIndex) %26]} (#{@name}/#{@position})"

    alphabet[((26 - alphabet[@position]) + convertedIndex) %26]
  end
  
  def shift ()
    if @position == notches[@name]
      left.shift()
    end
    if @position == "Z"
      @position = "A"
    else
      @position = @position.succ
    end
    
    
    
  end
  
  

end