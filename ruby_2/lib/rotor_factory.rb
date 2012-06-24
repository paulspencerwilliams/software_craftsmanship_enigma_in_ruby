require './lib/rotor.rb'

class RotorFactory
  def createRotors(rotorSpecs)
    rotors = []
    rotorSpecs.each do |rotorSpec|
      rotors << Rotor.new(rotorSpec)
    end
    rotors
  end
end