
describe "Strings" do
  
  context "created with double quotes" do
    
    it "are valid" do
      "Ruby Course".should eq 'Ruby Course'
    end
    
    it "are of class String" do
      "this string".should be_a String
    end 

    it "can contain bare single-quote (') characters" do
      "a'nu".should be_a String
    end
  
    it "allow the escape of double quote (\") characters" do
     "a\"nu".should be_a String
    end

    it "allow interpolation (Ruby code within the string)" do
     "123.to_s()".should be_a String
    end
    
    it "replace \t with a tab character" do
     "abc\t123".should eq "abc	123"
    end

    it "ADD AN EXAMPLE THAT TESTS A DIFFERENT ESCAPE SEQUENCE" do
      "abc\s123".should eq "abc 123"
    end

    it "replaceS special characters when values are specified at the end via '% [value]'" do
      value =  "3 + 4 = %d" %[7]
      value.should eq "3 + 4 = 7"
    end
    
  end
  
  context "created with single quotes" do
    
    it "are valid" do
      'Alfred E. Newman'.should eq "Alfred E. Newman"
    end
    
    it "are of class String" do
     'this string'.should be_a String
    end
    
    it "allow double-quote (\") characters" do
      %{Anu "Great" Warrier}.should eq "Anu \"Great\" Warrier"
    end

    it "allow the escape of single quote (') characters" do
      %{Anu 'Great' Warrier}.should eq "Anu \'Great\' Warrier"
    end
    
    it "does not interpolate Ruby code" do
     '123.to_s()'.should be_a String
    end

    it "does not escape newline characters" do
     %{Anu\nWarrier}.should eq "Anu\nWarrier" 
    end
    
  end

  context "created with Q sequence" do

    it "supports arbitrary delimiters and behave like a double quoted string" do
      %Q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "can omit the Q and just use %{}" do
      %Q{%{ 1 + 2 }}.should eq "%{ 1 + 2 }"
    end

    it "created with the pattern %q supports arbitrary delimiters and behave like a single quoted string" do
      %q(it's not escaped).should eq 'it\'s not escaped'
    end

  end

end
