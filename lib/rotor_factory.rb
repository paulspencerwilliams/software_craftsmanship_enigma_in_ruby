require './lib/rotor.rb'

class RotorFactory
  def createRotors(rotorSpecs)
    rotors = []
    previousRotor = nil
    rotorSpecs.each do |rotorSpec|
      rotor = Rotor.new(rotorSpec, previousRotor)
      rotors << rotor
      previousRotor = rotor
    end
    rotors
  end
end