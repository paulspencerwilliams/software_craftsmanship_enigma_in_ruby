require './lib/reflector.rb'

class Encoder 
  attr_accessor :rotors, :reflector
  
  def initialize (rotors, reflector = Reflector.new)
    @rotors = rotors
    @reflector = reflector
  end
  
  def convert(letter) 
    i = letter
    rotors.reverse_each do | rotor |
      i = rotor.convert(i)
    end
    
    i = reflector.reflect(i)
    
    rotors.each do | rotor|
      i = rotor.reverse(i)
    end

    i
  end
end