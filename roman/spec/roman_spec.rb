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

  context "from 9 to 39" do
    it "should convert 9 to IX" do
      @roman.parse(9).should == "IX"
    end

    it "should convert 10 to X" do
      @roman.parse(10).should == "X"
    end
    
    it "should convert 39 to XXXIX" do
      @roman.parse(39).should == "XXXIX"
    end
  end
  
  context "from 40 to 89" do
    it "should convert 40 to XL" do
      @roman.parse(40).should == "XL"
    end
  
    it "should convert 50 to L" do
      @roman.parse(50).should == "L"
    end
  
    it "should convert 89 to LXXXIX" do
      @roman.parse(89).should == "LXXXIX"
    end
  end
  
  context "from 90 to 400" do
    it "should convert 90 to XC" do
      @roman.parse(90).should == "XC"
    end
  
    it "should convert 100 to C" do
      @roman.parse(100).should == "C"
    end
  
    it "should convert 200 to CC" do
      @roman.parse(200).should == "CC"
    end

    it "should convert 400 to CD" do
      @roman.parse(400).should == "CD"
    end
  end

  context "from 500 to 3999" do
    it "should convert 500 to D" do
      @roman.parse(500).should == "D"
    end
  
    it "should convert 600 to DC" do
      @roman.parse(600).should == "DC"
    end
  
    it "should convert 200 to CC" do
      @roman.parse(900).should == "CM"
    end

    it "should convert 1000 to M" do
      @roman.parse(1000).should == "M"
    end

    it "should convert 2000 to MM" do
      @roman.parse(2000).should == "MM"
    end

    it "should convert 3999 to MMMCMXCIX" do
      @roman.parse(3999).should == "MMMCMXCIX"
    end
  end
end