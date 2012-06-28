require './lib/reflector.rb'

class Encoder
  def initialize reflector = Reflector.new
    @reflector = reflector
  end
  def convert(letter, rotors) 
    puts (letter)
    conversion = letter
    rotors.last.shift()    
    rotors.reverse_each do | rotor |
      conversion = rotor.convert (conversion)
    end

    conversion = @reflector.reflect(conversion)
    
    rotors.each do | rotor |
      conversion = rotor.reverse(conversion)
    end

    puts (conversion)
    conversion
  end
end