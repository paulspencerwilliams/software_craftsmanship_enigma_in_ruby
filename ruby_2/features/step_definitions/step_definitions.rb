Given /^I have loaded an Enigma machine with the following rotors$/ do |table|
  rotors = []
  startLetters = []
  table.rows.each do | row|
    rotors << row[0]
    startLetters << row[1]
  end 
  @enigmaMachine = EnigmaMachine.new rotors, startLetters
end

When /^I type "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
