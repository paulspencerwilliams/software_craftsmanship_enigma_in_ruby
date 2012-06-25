require './lib/encoder.rb'


describe Encoder do
  context "when converting a letter" do
    it "should pass letter through rotors" do
      leftRotor = double("leftRotor")
      centreRotor = double("centreRotor")
      rightRotor = double("rightRotor")
      reflector = double("reflector")
      
      rightRotor.stub("convert").with("A").and_return("B")
      centreRotor.stub("convert").with("B").and_return("C")
      leftRotor.stub("convert").with("C").and_return("D")
      reflector.stub("reflect").with("D").and_return("E")
      leftRotor.stub("reverse").with("E").and_return("F")
      centreRotor.stub("reverse").with("F").and_return("G")
      rightRotor.stub("reverse").with("G").and_return("H")      

      rotors = [leftRotor, centreRotor, rightRotor]

      sut = Encoder.new rotors, reflector
      
      sut.convert("A").should eq("H")
    end

  end
end