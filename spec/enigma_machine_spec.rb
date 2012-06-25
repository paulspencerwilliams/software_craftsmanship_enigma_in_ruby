require './lib/enigma_machine.rb'

describe EnigmaMachine do
  before (:each) do
    @rotorFactory = double("rotorFactory")
    @encoder = double("encoder")
    @rotorI = double("rotorI")
    @rotorII = double("rotorII")
    @rotorIII = double("rotorIII")
    @rotors = [@rotorI, @rotorII, @rotorIII]
    
    @rotorFactory.stub(:createRotors).with(["I","II","III"]).and_return(@rotors)
  end
    
  context "setting up enigma machine " do

    
    it "should setup rotors" do
      @rotorI.stub(:setPosition)
      @rotorII.stub(:setPosition)
      @rotorIII.stub(:setPosition)
      
      enigmaMachine = EnigmaMachine.new ["I","II","III"], ["M","C","K"], @rotorFactory      
      enigmaMachine.rotors.should eq(@rotors)
    end
    
    it "should set each rotor to correct position" do
      @rotorI.should_receive(:setPosition).with("M")
      @rotorII.should_receive(:setPosition).with("C")
      @rotorIII.should_receive(:setPosition).with("K")
      
      enigmaMachine = EnigmaMachine.new ["I","II","III"], ["M","C","K"], @rotorFactory      
    end    
  end

  context "when typing the message 'ABC'" do
    it "should return 'DEF'" do
      @rotorI.stub(:setPosition)
      @rotorII.stub(:setPosition)
      @rotorIII.stub(:setPosition)
      
      encoderFactory = double("encoderFactory")
      encoder = double("encoder")
      
      encoderFactory.stub(:create).and_return(encoder)
      encoder.stub(:convert).with("A").and_return("D")
      encoder.stub(:convert).with("B").and_return("E")
      encoder.stub(:convert).with("C").and_return("F")
      
      enigmaMachine = EnigmaMachine.new ["I","II","III"], ["M","C","K"], @rotorFactory, encoderFactory
      enigmaMachine.type("ABC").should eq("DEF")
    end
  end
  
end