require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'string_calculator'

Spec::Matchers.define :add do |sum|
  match do |actual|
    (@result = actual.extend(StringCalculator).add) == sum
  end
  
  failure_message_for_should do |string|
    "Expected #{string} add #{sum} but got #{@result}"
  end
end

describe StringCalculator do
  context "1 number" do
    it "returns zero for empty string" do
      "".should add(0)
    end

    it "returns 5 for 5" do
      "5".should add(5)
    end

    it "returns 29 for 29" do
      "29".should add(29)
    end
  end
  
  context "2 numbers" do
    it "returns 5 for 2,3" do
      "2,3".should add(5)
    end

    it "returns 25 for 10,15" do
      "10,15".should add(25)
    end

    it "returns 127 for 100,27" do
      "100,27".should add(127)
    end
  end

  context "3 numbers" do
    it "returns 9 for 2,3,4" do
      "2,3,4".should add(9)
    end

    it "returns 37 for 10,15,12" do
      "10,15,12".should add(37)
    end
    
    it "returns 179 for 100,27,52" do
      "100,27,52".should add(179)
    end
  end
end