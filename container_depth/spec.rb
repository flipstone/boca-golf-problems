# Problem:
#
# Given a data container composed of nested Arrays and Hashes, compute the
# depth of the structure.
#

describe "container_depth" do
  it "computes depth 1 for empty containters" do
    container_depth([]).should == 1
    container_depth({}).should == 1
  end

  it "computes depth 2 for containers with one nested child" do
    container_depth([[]]).should == 2
    container_depth({:foo => {}}).should == 2
    container_depth([{}]).should == 2
    container_depth({:bar => []}).should == 2
  end

  it "computes depth 1 for containers with non-nested children" do
    container_depth([:foo]).should == 1
    container_depth({:baz => :bat}).should == 1
  end
end
