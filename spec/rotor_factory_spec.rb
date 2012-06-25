require './lib/rotor_factory.rb'


describe RotorFactory do
  sut = RotorFactory.new  
  describe "#CreateRotors" do
    it "should create rotors for each rotorSpec possible" do
      rotorSpec = ["I", "II", "III"]
      rotors = sut.createRotors rotorSpec

      rotors.length.should eq(3)

    end
    
    it "should create the correct rotors" do
      rotorSpec = ["II"]
      rotors = sut.createRotors rotorSpec
      
      rotors[0].name.should eq("II")      
    end
    
    it "should leave left property on left most rotor nil" do
      rotorSpec = ["I", "II", "III"]
      rotors = sut.createRotors rotorSpec
      
      rotors[0].left.should eq(nil)
    end
    
    it "should populate left property on 2nd rotor onwards" do
      rotorSpec = ["I", "II", "III"]
      rotors = sut.createRotors rotorSpec
      
      rotors[1].left.should eq(rotors[0])
      rotors[2].left.should eq(rotors[1])
    end
  end
end
