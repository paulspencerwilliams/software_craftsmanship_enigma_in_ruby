require './lib/rotor_factory.rb'

describe RotorFactory do
  context "when creating rotors" do
    it "should create an array with correct rotors" do
      rotorFactory = RotorFactory.new
      
      rotors = rotorFactory.createRotors ["I","II","III"]
      
      rotors[0].name.should eq("I")
      rotors[1].name.should eq("II")
      rotors[1].left.should eq(rotors[0])
      rotors[2].name.should eq("III")
      rotors[2].left.should eq(rotors[1])
    end
  end
end