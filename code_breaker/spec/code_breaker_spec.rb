require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'code_breaker'))

include CodeBreaker

describe Marker do
  
  before(:each) do
    @marker = Marker.new(%w[r g b y])
  end
  
  context "0 maches" do
    it "return []" do
      @marker.guess(%w[w w w w]).should == []
    end
  end
  
  context "only right colors in wrong place" do
    it "1 color return ['m']" do
      @marker.guess(%w[w w w r]).should == %w[m]
    end

    it "2 colors return ['m', 'm']" do
      @marker.guess(%w[w w g r]).should == %w[m m]
    end

    it "3 colors return ['m', 'm', 'm']" do
      @marker.guess(%w[w b g r]).should == %w[m m m]
    end

    it "all colors return ['m', 'm', 'm', 'm']" do
      @marker.guess(%w[y b g r]).should == %w[m m m m]
    end
  end
end