require './lib/rotor.rb'

describe Rotor do
  
  context "when rotor III is set to L" do
    before (:each) do
      @rotor = Rotor.new "III"
      @rotor.setPosition("L")      
    end

    
    it "should convert E to T" do
      @rotor.convert("E").should eq("T")
    end
    
    it "should convert B to O" do
      @rotor.convert("B").should eq("O")
    end
    
    it "should convert U to A" do
      @rotor.convert("U").should eq("A")
    end
    
    it "should reverse E to W" do
      @rotor.reverse("E").should eq("W")
    end
    
    it "should reverse B to K" do
      @rotor.reverse("B").should eq("K")
    end
    
    it "should reverse U to R" do
      @rotor.reverse("U").should eq("R")
    end
    
    it "should increment position to M if shifted" do
      @rotor.shift()
      @rotor.position.should eq("M")
    end
    

  end
  
  context "when rotor III is set to Z" do
    before (:each) do
      @rotor = Rotor.new "III"
      @rotor.setPosition("Z") 
    end
    
    
    it "should set position to A" do
      @rotor.shift()
      @rotor.position.should eq("A")
    end
    

  end
  
  context "when rotor III is set to V" do
    before (:each) do
      @rotor = Rotor.new "III"
      @rotor.setPosition("V") 
      @leftRotor = double("leftRotor")
      @rotor.left = @leftRotor
    end
        
    it "should shift left rotor" do
      @leftRotor.should_receive(:shift)
      @rotor.shift()
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
  
  
  context "when rotor II is set to E" do
    before (:each) do
      @rotor = Rotor.new "II"
      @rotor.setPosition("E") 
      @leftRotor = double("leftRotor")
      @rotor.left = @leftRotor
    end
        
    it "should shift left rotor" do
      @leftRotor.should_receive(:shift)
      @rotor.shift()
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
  
  context "when rotor I is set to Q" do
    before (:each) do
      @rotor = Rotor.new "I"
      @rotor.setPosition("Q") 
      @leftRotor = double("leftRotor")
      @rotor.left = @leftRotor
    end
        
    it "should shift left rotor" do
      @leftRotor.should_receive(:shift)
      @rotor.shift()
    end
  end


  
end