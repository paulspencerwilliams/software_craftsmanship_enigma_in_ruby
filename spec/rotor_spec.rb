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
    
    it "should reverse E to W" do
      rotor.reverse("E").should eq("W")
    end
    
    it "should reverse B to K" do
      rotor.reverse("B").should eq("K")
    end
    
    it "should reverse U to R" do
      rotor.reverse("U").should eq("R")
    end    
    
  
  end
  
  
  context "when rotor II is set to C" do
    rotor = Rotor.new "II"
    rotor.setPosition("C")
    
    it "should convert T to W" do
      rotor.convert("T").should eq("W")
    end

    it "should reverse T to V" do
      rotor.reverse("T").should eq("V")
    end


  end  

  context "when rotor I is set to M" do
    rotor = Rotor.new "I"
    rotor.setPosition("M")
    
    it "should convert W to J" do
      rotor.convert("W").should eq("J")
    end
    
    it "should reverse W to J" do
      rotor.reverse("W").should eq("J")
    end
  end  


  
end