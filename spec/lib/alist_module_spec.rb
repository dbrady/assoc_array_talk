require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "lib" ,"alist_module"))

# AlistModule adds methods to Array so that you just work with arrays.

describe Array do
  before(:each) do
    @alist = Array.new([
                         [:foo, 42],
                         [:bar, 13],
                         [:baz, 64],
                         [:foo, 92]
                       ])
  end
  
  describe "#alist_delete" do
    describe "with previous data for that pair" do
      it "should restore older copy of the pair" do
        @alist.alist_delete :foo
        @alist.assoc(:foo).should == [:foo, 92]
      end
    end
  end
end 
