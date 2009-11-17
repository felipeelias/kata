require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'prime_factors'))

describe PrimeFactors do
  
  context "returning a prime factor of" do
    it "1 should be an empty list" do
      PrimeFactors.generate(1).should == []
    end

    it "2 should be a list with [2]" do
      PrimeFactors.generate(2).should == [2]
    end

    it "3 should be a list with [3]" do
      PrimeFactors.generate(3).should == [3]
    end
    
    it "4 should be a list with [2, 2]" do
      PrimeFactors.generate(4).should == [2, 2]
    end

    it "6 should be a list with [2, 3]" do
      PrimeFactors.generate(6).should == [2, 3]
    end
    
    it "8 should be a list with [2, 2, 2]" do
       PrimeFactors.generate(8).should == [2, 2, 2]
    end

    it "9 should be a list with [3, 3]" do
       PrimeFactors.generate(9).should == [3, 3]
    end
  end
end