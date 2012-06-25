require './lib/enigma_machine.rb'

describe EnigmaMachine do
  context "setting up enigma machine " do
    before do
      @rotorFactory = double("rotorFactory")
      @encoder = double("encoder")
      @rotorI = double("rotorI")
      @rotorII = double("rotorII")
      @rotorIII = double("rotorIII")
      @rotors = [@rotorI, @rotorII, @rotorIII]
      
      @rotorFactory.stub(:createRotors).with(["I","II","III"]).and_return(@rotors)
      

    end
    
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
end