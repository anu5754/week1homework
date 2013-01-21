describe "Symbols" do

  it "are not like strings, which can have duplicate content in multiple objects" do
    "only_one".object_id.should_not eq "only_one".object_id
  end

  it "only exist once" do
    ("only" + "one").to_sym.object_id.should eq :onlyone.object_id
  end

  it "are of class Symbol" do
   "ABC".downcase.should eq "abc"
  end

  
  it "are not the same as a string of the same characters" do
    "ABCD".should_not eq "abcd"
  end
  
  it "are convertable to strings" do
   123.to_s().should eq "123"
  end
 
  it "are convertable from a string to float" do
   "12.3".to_f().should eq 12.3
  end

  it "automatically converts to a string when interpolated" do
   ("2 + 2").should eq "2 + 2"
  end
  
end
