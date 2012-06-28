require './lib/reflector.rb'

describe Reflector do
  describe "reflecting letters" do
    
    reflector = Reflector.new
    
    it "should convert A to Y" do
      reflector.reflect("A").should eq("Y")
    end

    it "should convert B to R" do
      reflector.reflect("B").should eq("R")
    end

    it "should convert M to O" do
      reflector.reflect("M").should eq("O")
    end
    
    it "should convert Z to T" do
      reflector.reflect("Z").should eq("T")
    end
    
    it "all mappings can be reversed" do
      "A".upto("Z").each do |letter|
        firstReflection = reflector.reflect(letter)
        secondReflection = reflector.reflect(firstReflection)
        secondReflection.should eq(letter)
        
      end
    end

  end
  
end