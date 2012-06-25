require './lib/rotor.rb'

class RotorFactory
  def createRotors (rotorsToCreate)
    rotors = []
    for i in 0..rotorsToCreate.length - 1 do
      rotors << Rotor.new( rotorsToCreate[i])
    end
    rotors
  end
end