Transform /^"(.*)"$/ do |guess|
  guess.strip.split(' ')
end
 
Given /^the secret ("[rygbc ]*")$/ do |secret|
  @marker = CodeBreaker::Marker.new secret
end
 
When /^I guess ("[rygbc ]*")$/ do |guess|
  @marker.guess guess
end
 
Then /^I should get ("[pm ]*")$/ do |mark|
  @marker.mark.should == mark
end