require './lib/enigma_machine.rb'

describe EnigmaMachine do

  context "setting up enigma machine" do
    before (:each) do
      
      @rotorSpecs = ["I", "II"]
      @rotorStartPositions = ["M", "W"]
      @stubbedRotorFactory = double("RotorFactory")
      @stubbedEncoderFactory = double("EncoderFactory")
      @dummyEncoder = double("Encoder")
      
      @dummyRotorI = double("RotorI")
      @dummyRotorII = double("RotorII")
      
      dummy_rotors = [@dummyRotorI, @dummyRotorII]
      
      @stubbedRotorFactory.stub(:createRotors).with(@rotorSpecs).and_return(dummy_rotors)
      @stubbedEncoderFactory.stub(:create).with(dummy_rotors).and_return(@dummyEncoder)
      

      
    end
    it "should set up encoder with rotors" do 
      @dummyRotorI.stub(:setPosition)
      @dummyRotorII.stub(:setPosition)
      
      @sut = EnigmaMachine.new @rotorSpecs, @rotorStartPositions, @stubbedRotorFactory, @stubbedEncoderFactory
      @sut.encoder.should eq(@dummyEncoder)
    end
    
    it "should set rotors to correct place" do
      @dummyRotorI.should_receive(:setPosition).with("M")
      @dummyRotorII.should_receive(:setPosition).with("W")
      
      EnigmaMachine.new @rotorSpecs, @rotorStartPositions, @stubbedRotorFactory, @stubbedEncoderFactory
    end
  end
  
end