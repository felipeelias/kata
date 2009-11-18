require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'roman'))

describe "RomanNumber" do
  context "should create a new roman number" do
    RomanNumber.new(1).to_s.should == "I"
  end
  
  context "from 1 to 3" do
    it "should convert 1 to I" do
      RomanNumber.new(1).to_s.should == "I"
    end

    it "should convert 2 to II" do
      RomanNumber.new(2).to_s.should == "II"
    end
    
    it "should convert 3 to III" do
      RomanNumber.new(3).to_s.should == "III"
    end
  end

  context "from 4 to 9" do
    it "should convert 4 to IV" do
      RomanNumber.new(4).to_s.should == "IV"
    end
    
    it "should convert 5 to V" do
      RomanNumber.new(5).to_s.should == "V"
    end
    
    it "should convert 8 to VIII" do
      RomanNumber.new(8).to_s.should == "VIII"
    end
  end

  context "from 9 to 39" do
    it "should convert 9 to IX" do
      RomanNumber.new(9).to_s.should == "IX"
    end

    it "should convert 10 to X" do
      RomanNumber.new(10).to_s.should == "X"
    end
    
    it "should convert 39 to XXXIX" do
      RomanNumber.new(39).to_s.should == "XXXIX"
    end
  end
  
  context "from 40 to 89" do
    it "should convert 40 to XL" do
      RomanNumber.new(40).to_s.should == "XL"
    end
  
    it "should convert 50 to L" do
      RomanNumber.new(50).to_s.should == "L"
    end
  
    it "should convert 89 to LXXXIX" do
      RomanNumber.new(89).to_s.should == "LXXXIX"
    end
  end
  
  context "from 90 to 400" do
    it "should convert 90 to XC" do
      RomanNumber.new(90).to_s.should == "XC"
    end
  
    it "should convert 100 to C" do
      RomanNumber.new(100).to_s.should == "C"
    end
  
    it "should convert 200 to CC" do
      RomanNumber.new(200).to_s.should == "CC"
    end

    it "should convert 400 to CD" do
      RomanNumber.new(400).to_s.should == "CD"
    end
  end

  context "from 500 to 3999" do
    it "should convert 500 to D" do
      RomanNumber.new(500).to_s.should == "D"
    end
  
    it "should convert 600 to DC" do
      RomanNumber.new(600).to_s.should == "DC"
    end
  
    it "should convert 200 to CC" do
      RomanNumber.new(900).to_s.should == "CM"
    end

    it "should convert 1000 to M" do
      RomanNumber.new(1000).to_s.should == "M"
    end

    it "should convert 2000 to MM" do
      RomanNumber.new(2000).to_s.should == "MM"
    end

    it "should convert 3999 to MMMCMXCIX" do
      RomanNumber.new(3999).to_s.should == "MMMCMXCIX"
    end
  end
  
  context "unknown numbers" do
    it "cannot convert 0" do
      lambda { RomanNumber.new(0).to_s }.should raise_error("Unknown roman number")
    end

    it "cannot convert negative numbers" do
      lambda { RomanNumber.new(-100).to_s }.should raise_error("Unknown roman number")
    end

    it "cannot convert numbers greater than 3999" do
      lambda { RomanNumber.new(4000).to_s }.should raise_error("Unknown roman number")
    end
  end
  
  context "integers can be converted to romans" do
    it "should convert an integer object to roman" do
      10.to_roman.should == "X"
    end

    it "should not convert a BigNum object to roman" do
      9_999_999_999_999_999_999.should_not respond_to(:to_roman)
    end
  end
end