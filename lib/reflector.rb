require './lib/mappings.rb'


class Reflector
  include Mappings
    
  def reflect(letter)
    convertedIndex = reflectMappings[letter]
  end
end