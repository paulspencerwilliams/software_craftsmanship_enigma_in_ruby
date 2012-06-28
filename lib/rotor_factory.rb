require './lib/rotor.rb'

class RotorFactory
  def createRotors (rotorsToCreate)
    rotors = []
    leftRotor = nil;
    for i in 0..rotorsToCreate.length - 1 do
      newRotor = Rotor.new( rotorsToCreate[i], leftRotor)
      rotors << newRotor
      leftRotor = newRotor
      
    end
    rotors
  end
end