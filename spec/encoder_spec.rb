require './lib/encoder.rb'

describe Encoder do
  describe "when asked to convert a letter" do
    it "should pass letter through rotors, reflector and back again" do
      rotorI = double("rotorI")
      rotorII = double("rotorII")
      rotorIII = double("rotorIII")
      rotors = [rotorI, rotorII, rotorIII]
      
      reflector = double("reflector")
      
      rotorIII.stub(:convert).with("A").and_return("B")
      rotorII.stub(:convert).with("B").and_return("C")
      rotorI.stub(:convert).with("C").and_return("D")
      
      reflector.stub(:reflect).with("D").and_return("E")
      
      rotorI.stub(:reverse).with("E").and_return("F")
      rotorII.stub(:reverse).with("F").and_return("G")
      rotorIII.stub(:reverse).with("G").and_return("H")
      
      encoder = Encoder.new reflector
      
      encoder.convert("A", rotors).should eq("H")
      
    end
  end
end
