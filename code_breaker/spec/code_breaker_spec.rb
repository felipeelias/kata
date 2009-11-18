require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'code_breaker'))

describe CodeBreakerGenerator do
  context "generating random unique colors" do
    it "should generate 4 colors" do
      CodeBreakerGenerator.generate.length.should == 4
    end
    
    it "should generate only colors" do
      CodeBreakerGenerator.generate.should be_an_instance_of(Array)
    end
  end
end