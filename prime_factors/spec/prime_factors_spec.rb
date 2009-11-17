require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'prime_factors'))

describe PrimeFactors do
  it "should factor 1" do
    PrimeFactors.generate(1).should == []
  end

  it "should factor 2" do
    PrimeFactors.generate(2).should == [2]
  end

  it "should factor 3" do
    PrimeFactors.generate(3).should == [3]
  end
  
  it "should factor 4" do
    PrimeFactors.generate(4).should == [2, 2]
  end

  it "should factor 6" do
    PrimeFactors.generate(6).should == [2, 3]
  end
  
  it "should factor 8" do
     PrimeFactors.generate(8).should == [2, 2, 2]
  end

  it "should factor 9" do
     PrimeFactors.generate(9).should == [3, 3]
  end
end