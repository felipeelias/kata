require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'code_breaker'))

include CodeBreaker

Spec::Matchers.define :mark do |guess|
  match do |marker|
    marker.guess(guess)
    @actual_mark = marker.mark
    @actual_mark == @expected_mark
  end
  def and_return(mark)
    @expected_mark = mark
    self
  end
  failure_message_for_should do |marker|
    "#{@guess.inspect} expected to mark as:\n#{@mark.inspect}, but got\n#{@actual_mark.inspect}"
  end
end

describe Marker do
  
  before(:all) do
    @marker = Marker.new(%w[r g b y])
  end
  
  context "0 maches" do
    it "return []" do
      @marker.should mark(%w[w w w w]).and_return([])
    end
  end
  
  context "only right colors in wrong place" do
    it "1 color return [m]" do
      @marker.should mark(%w[w w w r]).and_return(%w[m])
    end

    it "2 colors return [m m]" do
      @marker.should mark(%w[w w g r]).and_return(%w[m m])
    end

    it "3 colors return [m m m]" do
      @marker.should mark(%w[w b g r]).and_return(%w[m m m])
    end

    it "all colors return [m m m m]" do
      @marker.should mark(%w[y b g r]).and_return(%w[m m m m])
    end
  end
  
  context "only right colors in right place" do
    it "1 color return [p]" do
      @marker.should mark(%w[w w w y]).and_return(%w[p])
    end

    it "2 colors return [p p]" do
      @marker.should mark(%w[w w b y]).and_return(%w[p p])
    end

    it "3 colors return [p p p]" do
      @marker.should mark(%w[w g b y]).and_return(%w[p p p])
    end

    it "all colors return [p p p p]" do
      @marker.should mark(%w[r g b y]).and_return(%w[p p p p])
    end
  end  

  context "mixed right colors in right/wrong place" do
    it "1 right color/place and 1 wrong place return [m p]" do
      @marker.should mark(%w[r b w w]).and_return(%w[m p])
    end

    it "2 right color/place and 2 wrong place return [m m p p]" do
      @marker.should mark(%w[r y b g]).and_return(%w[m m p p])
    end

    it "2 right color/place and 2 wrong place return [m m p p] (inverse order)" do
      @marker.should mark(%w[b g r y]).and_return(%w[m m p p])
    end
  end  

end