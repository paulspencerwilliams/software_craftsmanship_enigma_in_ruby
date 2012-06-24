require './lib/enigma_machine.rb'

describe EnigmaMachine do
  context "setting up enigma machine" do
    it "should set up encoder with rotors" do 
      rotorSpecs = ["I", "II"]
      rotorStartPositions = ["M", "W"]
      stubbedRotorFactory = double("RotorFactory")
      stubbedEncoderFactory = double("EncoderFactory")
      dummyEncoder = double("Encoder")
      
      dummy_rotors = []
      
      stubbedRotorFactory.stub(:createRotors).with(rotorSpecs).and_return(dummy_rotors)
      stubbedEncoderFactory.stub(:create).with(dummy_rotors).and_return(dummyEncoder)
      
      sut = EnigmaMachine.new rotorSpecs, rotorStartPositions, stubbedRotorFactory, stubbedEncoderFactory
      sut.encoder.should eq(dummyEncoder)
      
    end
    
    it "should set rotors to correct place" do
    end
  end
  
end