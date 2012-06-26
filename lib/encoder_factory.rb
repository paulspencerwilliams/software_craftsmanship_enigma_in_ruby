require './lib/encoder.rb'

class EncoderFactory
  def create
    Encoder.new
  end
end