require './lib/encoder.rb'

describe Encoder do
  describe "when asked to convert a letter" do
    before (:each) do
      rotorI = double("rotorI")
      rotorII = double("rotorII")
      @rotorIII = double("rotorIII")
      @rotors = [rotorI, rotorII, @rotorIII]
      
      @reflector = double("reflector")
      
      rotorII.stub(:convert).with("B").and_return("C")
      rotorI.stub(:convert).with("C").and_return("D")      
      
      @reflector.stub(:reflect).with("D").and_return("E")
      
      rotorI.stub(:reverse).with("E").and_return("F")
      rotorII.stub(:reverse).with("F").and_return("G")
      @rotorIII.stub(:reverse).with("G").and_return("H")  
      
      @encoder = Encoder.new @reflector
      
    end
    
    it "should first shift rightmost rotor before converting through it" do
      @rotorIII.should_receive(:shift).ordered
      @rotorIII.should_receive(:convert).with("A").ordered.and_return("B")
      
      @encoder.convert("A", @rotors)
    end
    
    
    it "should pass letter through rotors, reflector and back again" do
      @rotorIII.stub(:shift)
      @rotorIII.stub(:convert).with("A").and_return("B")
      @encoder.convert("A", @rotors).should eq("H")
    end
  end
end
