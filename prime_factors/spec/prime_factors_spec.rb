require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'prime_factors'))

describe PrimeFactors do
  it "should factor 1" do
    PrimeFactors.of(1).should == []
  end

  it "should factor 2" do
    PrimeFactors.of(2).should == [2]
  end

  it "should factor 3" do
    PrimeFactors.of(3).should == [3]
  end
  
  it "should factor 4" do
    PrimeFactors.of(4).should == [2, 2]
  end

  it "should factor 5" do
    PrimeFactors.of(5).should == [5]
  end

  it "should factor 6" do
    PrimeFactors.of(6).should == [2, 3]
  end
  
  it "should factor 7" do
    PrimeFactors.of(7).should == [7]
  end

  it "should factor 8" do
    PrimeFactors.of(8).should == [2, 2, 2]
  end

  it "should factor 9" do
    PrimeFactors.of(9).should == [3, 3]
  end

  it "should factor other prime" do
    PrimeFactors.of(13*13*23).should == [13, 13, 23]
  end

  it "should factor other large powers of two" do
    PrimeFactors.of(4096).should == [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
  end
end