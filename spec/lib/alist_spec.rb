require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))

describe Alist do
  before(:each) do
    @alist = Alist.new([[:foo, 42], [:bar, 69]])
  end
  
  it "should be equivalent to Array" do
    # This is stupid and wrong. An alist has wildly different semantics. Change this! It is NOT an array, it's an alist. OK to include Enumerable, etc, but not to inherit from Array
    @alist.should be_a(Array)
  end

  describe "#[]" do
    
    it "should return alist pairs" do
      @alist[:foo].should == [:foo, 42]
    end
  end
  
  describe "#[]=" do
    it "should preserve history" do
      @alist[:foo] = 13
      @alist.size.should == 3
      @alist.select {|a| a[0] == :foo}.should == [[:foo, 13], [:foo, 42]]
    end
  end
  
  describe "#delete" do
    it "should remove only the most recent item" do
      @alist[:foo] = 13
      del = @alist.delete(:foo)
      del.should == [:foo, 13]
      @alist[:foo].should == [:foo, 42]
    end
  end
end

