require './lib/rotor_factory.rb'
require './lib/encoder_factory.rb'

class EnigmaMachine
  attr_accessor :rotors
  
  def initialize rotorsToUse, rotorPositions, rotorFactory = RotorFactory.new, encoderFactory = EncoderFactory.new
    @rotors = rotorFactory.createRotors(rotorsToUse)
    @encoderFactory = encoderFactory
    for i in 0..rotorsToUse.length - 1 do
      @rotors[i].setPosition rotorPositions[i]
    end
  end
  
  def type (input)
    encoder = @encoderFactory.create
    output = ""
    input.split("").each do |i|
      output << encoder.convert(i, rotors)
    end
    output
  end
end