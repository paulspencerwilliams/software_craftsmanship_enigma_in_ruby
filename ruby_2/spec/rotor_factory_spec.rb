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
    
  end
end
