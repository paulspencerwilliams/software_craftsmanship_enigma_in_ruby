require './lib/rotor.rb'

describe Rotor do
  
  context "when rotor III is set to L" do
    rotor = Rotor.new "III"
    rotor.setPosition("L")
    it "should convert E to T" do
      rotor.convert("E").should eq("T")
    end
    
    it "should convert B to O" do
      rotor.convert("B").should eq("O")
    end
    
    it "should convert U to A" do
      rotor.convert("U").should eq("A")
    end
  
  end
  
  
  context "when rotor II is set to C" do
    rotor = Rotor.new "II"
    rotor.setPosition("C")
    
    it "should convert T to Y" do
      rotor.convert("T").should eq("W")
    end
  end  

  context "when rotor I is set to M" do
    rotor = Rotor.new "I"
    rotor.setPosition("M")
    
    it "should convert W to J" do
      rotor.convert("W").should eq("J")
    end
  end  


  
end