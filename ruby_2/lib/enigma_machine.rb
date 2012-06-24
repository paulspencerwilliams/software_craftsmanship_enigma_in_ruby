require './lib/encoder.rb'

class EnigmaMachine 
  attr_accessor :encoder
  def initialize (rotors, rotorStartingPositions, rotorFactory, encoderFactory)
    rotors = rotorFactory.createRotors(rotors)
    @encoder = encoderFactory.create(rotors)
  end
end