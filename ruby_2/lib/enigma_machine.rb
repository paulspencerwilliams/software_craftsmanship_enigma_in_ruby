require './lib/encoder.rb'
require './lib/rotor_factory.rb'
require './lib/encoder_factory.rb'

class EnigmaMachine 
  attr_accessor :encoder
  def initialize (rotors, rotorStartingPositions, rotorFactory = RotorFactory.new, encoderFactory = EncoderFactory.new)
    rotors = rotorFactory.createRotors(rotors)
    @encoder = encoderFactory.create(rotors)
  end
end