require './lib/mappings.rb'
class DummyClass 

end

describe Mappings do
  before (:each) do
    @dummy_class = DummyClass.new
    @dummy_class.extend(Mappings)
  end
  
  it "should convert letters for rotor I" do
    verifyConversion "I", "A", "E"
    verifyConversion "I", "B", "K"
    verifyConversion "I", "C", "M"
    verifyConversion "I", "D", "F"
    verifyConversion "I", "E", "L"
    verifyConversion "I", "F", "G"
    verifyConversion "I", "G", "D"
    verifyConversion "I", "H", "Q"
    verifyConversion "I", "I", "V"
    verifyConversion "I", "J", "Z"
    verifyConversion "I", "K", "N"
    verifyConversion "I", "L", "T"
    verifyConversion "I", "M", "O"
    verifyConversion "I", "N", "W"
    verifyConversion "I", "O", "Y"
    verifyConversion "I", "P", "H"
    verifyConversion "I", "Q", "X"
    verifyConversion "I", "R", "U"
    verifyConversion "I", "S", "S"
    verifyConversion "I", "T", "P"
    verifyConversion "I", "U", "A"
    verifyConversion "I", "V", "I"
    verifyConversion "I", "W", "B"
    verifyConversion "I", "X", "R"
    verifyConversion "I", "Y", "C"
    verifyConversion "I", "Z", "J"
    
    verifyConversion "II", "A", "A"
    verifyConversion "II", "B", "J"
    verifyConversion "II", "C", "D"
    verifyConversion "II", "D", "K"
    verifyConversion "II", "E", "S"
    verifyConversion "II", "F", "I"
    verifyConversion "II", "G", "R"
    verifyConversion "II", "H", "U"
    verifyConversion "II", "I", "X"
    verifyConversion "II", "J", "B"
    verifyConversion "II", "K", "L"
    verifyConversion "II", "L", "H"
    verifyConversion "II", "M", "W"
    verifyConversion "II", "N", "T"
    verifyConversion "II", "O", "M"
    verifyConversion "II", "P", "C"
    verifyConversion "II", "Q", "Q"
    verifyConversion "II", "R", "G"
    verifyConversion "II", "S", "Z"
    verifyConversion "II", "T", "N"
    verifyConversion "II", "U", "P"
    verifyConversion "II", "V", "Y"
    verifyConversion "II", "W", "F"
    verifyConversion "II", "X", "V"
    verifyConversion "II", "Y", "O"
    verifyConversion "II", "Z", "E"
    
    verifyConversion "III", "A", "B"
    verifyConversion "III", "B", "D"
    verifyConversion "III", "C", "F"
    verifyConversion "III", "D", "H"
    verifyConversion "III", "E", "J"
    verifyConversion "III", "F", "L"
    verifyConversion "III", "G", "C"
    verifyConversion "III", "H", "P"
    verifyConversion "III", "I", "R"
    verifyConversion "III", "J", "T"
    verifyConversion "III", "K", "X"
    verifyConversion "III", "L", "V"
    verifyConversion "III", "M", "Z"
    verifyConversion "III", "N", "N"
    verifyConversion "III", "O", "Y"
    verifyConversion "III", "P", "E"
    verifyConversion "III", "Q", "I"
    verifyConversion "III", "R", "W"
    verifyConversion "III", "S", "G"
    verifyConversion "III", "T", "A"
    verifyConversion "III", "U", "K"
    verifyConversion "III", "V", "M"
    verifyConversion "III", "W", "U"
    verifyConversion "III", "X", "S"
    verifyConversion "III", "Y", "Q"
    verifyConversion "III", "Z", "O"
    
    verifyReverse "I", "A", "U"
    verifyReverse "I", "B", "W"
    verifyReverse "I", "C", "Y"
    verifyReverse "I", "D", "G"
    verifyReverse "I", "E", "A"
    verifyReverse "I", "F", "D"
    verifyReverse "I", "G", "F"
    verifyReverse "I", "H", "P"
    verifyReverse "I", "I", "V"
    verifyReverse "I", "J", "Z"
    verifyReverse "I", "K", "B"
    verifyReverse "I", "L", "E"
    verifyReverse "I", "M", "C"
    verifyReverse "I", "N", "K"
    verifyReverse "I", "O", "M"
    verifyReverse "I", "P", "T"
    verifyReverse "I", "Q", "H"
    verifyReverse "I", "R", "X"
    verifyReverse "I", "S", "S"
    verifyReverse "I", "T", "L"
    verifyReverse "I", "U", "R"
    verifyReverse "I", "V", "I"
    verifyReverse "I", "W", "N"
    verifyReverse "I", "X", "Q"
    verifyReverse "I", "Y", "O"
    verifyReverse "I", "Z", "J"

    verifyReverse "II", "A", "A"
    verifyReverse "II", "B", "J"
    verifyReverse "II", "C", "P"
    verifyReverse "II", "D", "C"
    verifyReverse "II", "E", "Z"
    verifyReverse "II", "F", "W"
    verifyReverse "II", "G", "R"
    verifyReverse "II", "H", "L"
    verifyReverse "II", "I", "F"
    verifyReverse "II", "J", "B"
    verifyReverse "II", "K", "D"
    verifyReverse "II", "L", "K"
    verifyReverse "II", "M", "O"
    verifyReverse "II", "N", "T"
    verifyReverse "II", "O", "Y"
    verifyReverse "II", "P", "U"
    verifyReverse "II", "Q", "Q"
    verifyReverse "II", "R", "G"
    verifyReverse "II", "S", "E"
    verifyReverse "II", "T", "N"
    verifyReverse "II", "U", "H"
    verifyReverse "II", "V", "X"
    verifyReverse "II", "W", "M"
    verifyReverse "II", "X", "I"
    verifyReverse "II", "Y", "V"
    verifyReverse "II", "Z", "S"

    verifyReverse "III", "A", "T"
    verifyReverse "III", "B", "A"
    verifyReverse "III", "C", "G"
    verifyReverse "III", "D", "B"
    verifyReverse "III", "E", "P"
    verifyReverse "III", "F", "C"
    verifyReverse "III", "G", "S"
    verifyReverse "III", "H", "D"
    verifyReverse "III", "I", "Q"
    verifyReverse "III", "J", "E"
    verifyReverse "III", "K", "U"
    verifyReverse "III", "L", "F"
    verifyReverse "III", "M", "V"
    verifyReverse "III", "N", "N"
    verifyReverse "III", "O", "Z"
    verifyReverse "III", "P", "H"
    verifyReverse "III", "Q", "Y"
    verifyReverse "III", "R", "I"
    verifyReverse "III", "S", "X"
    verifyReverse "III", "T", "J"
    verifyReverse "III", "U", "W"
    verifyReverse "III", "V", "L"
    verifyReverse "III", "W", "R"
    verifyReverse "III", "X", "K"
    verifyReverse "III", "Y", "O"
    verifyReverse "III", "Z", "M"
    
  end
  
  def verifyConversion (rotorName, input, expected)
    @dummy_class.alphabet[@dummy_class.convertMappings[rotorName][@dummy_class.alphabet[input]]] .should eq(expected)
  end

  def verifyReverse (rotorName, input, expected)
    @dummy_class.alphabet[@dummy_class.reverseMappings[rotorName][@dummy_class.alphabet[input]]] .should eq(expected)
  end
  
  

end