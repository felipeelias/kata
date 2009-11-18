require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'roman'))

describe "RomanNumber" do
  context "converting an integer to roman" do
    before(:each) do
      @roman = RomanNumber.new
    end

    it "should convert 1 to I" do
      @roman.parse(1).should == "I"
    end
    
    it "should convert 5 to V" do
      @roman.parse(5).should == "V"
    end

    it "should convert 10 to X" do
      @roman.parse(10).should == "X"
    end

    it "should convert 50 to L" do
      @roman.parse(50).should == "L"
    end

    it "should convert 100 to C" do
      @roman.parse(100).should == "C"
    end

    it "should convert 500 to D" do
      @roman.parse(500).should == "D"
    end

    it "should convert 1000 to M" do
      @roman.parse(1000).should == "M"
    end
  end
end