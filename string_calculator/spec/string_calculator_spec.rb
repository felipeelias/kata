require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'string_calculator'

Spec::Matchers.define :add do |sum|
  match do |actual|
    actual.extend(StringCalculator).add == sum
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
end