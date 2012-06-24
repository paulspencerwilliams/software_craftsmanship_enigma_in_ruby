require './lib/enigma_machine.rb'
Given /^I have loaded an Enigma machine with the following rotors$/ do |table|
  rotors = []
  rotorStartPositions = []
  table.rows.each do | row|
    rotors << row[0]
    rotorStartPositions << row[1]
  end 
  @enigmaMachine = EnigmaMachine.new rotors, rotorStartPositions
end

When /^I type "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
