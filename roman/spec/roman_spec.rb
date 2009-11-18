require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'roman'))

describe "RomanNumber" do
  before(:each) do
    @roman = RomanNumber.new
  end

  context "from 1 to 3" do
    it "should convert 1 to I" do
      @roman.parse(1).should == "I"
    end

    it "should convert 2 to II" do
      @roman.parse(2).should == "II"
    end
    
    it "should convert 3 to III" do
      @roman.parse(3).should == "III"
    end
  end

  context "from 4 to 9" do
    it "should convert 4 to IV" do
      @roman.parse(4).should == "IV"
    end
    
    it "should convert 5 to V" do
      @roman.parse(5).should == "V"
    end
    
    it "should convert 8 to VIII" do
      @roman.parse(8).should == "VIII"
    end
  end

  context "from 9 to 18" do
    it "should convert 9 to IX" do
      @roman.parse(9).should == "IX"
    end

    it "should convert 10 to X" do
      @roman.parse(10).should == "X"
    end

    it "should convert 18 to XVIII" do
      @roman.parse(18).should == "XVIII"
    end
  end
  
  context "from 19 to 38" do
    it "should convert 19 to XIX" do
      @roman.parse(19).should == "XIX"
    end

    it "should convert 20 to XX" do
      @roman.parse(20).should == "XX"
    end

    it "should convert 38 to XXXVIII" do
      @roman.parse(38).should == "XXXVIII"
    end
  end
end