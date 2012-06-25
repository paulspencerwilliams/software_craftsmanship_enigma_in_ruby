class EnigmaMachine
  attr_accessor :rotors
  
  def initialize rotorsToUse, rotorPositions, rotorFactory
    @rotors = rotorFactory.createRotors(rotorsToUse)
    for i in 0..rotorsToUse.length - 1 do
      @rotors[i].setPosition rotorPositions[i]
    end
  end
end