require './lib/encoder.rb'
require './lib/rotor_factory.rb'
require './lib/encoder_factory.rb'

class EnigmaMachine 
  attr_accessor :encoder
  def initialize (rotorSpecs, rotorStartingPositions, rotorFactory = RotorFactory.new, encoderFactory = EncoderFactory.new)
    rotors = rotorFactory.createRotors(rotorSpecs)
    
    for i in 0 .. rotors.length - 1 do
        rotors[i].setPosition(rotorStartingPositions[i])
    end
    
    @encoder = encoderFactory.create(rotors)
  end
  
  def type(input)
    result = ""
    input.split("").each do |i|
      result << @encoder.convert(i)
    end
    result
  end
end