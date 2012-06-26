require './lib/rotor.rb'

describe Rotor do
  context "when setting position" do
    it "should remember position" do
      rotor  = Rotor.new "I" 
      rotor.setPosition("B")
      rotor.position.should eq("B")
    end
  end
end