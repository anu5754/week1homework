describe "Integers" do

  it "have methods (just like all objects)" do
    1.should respond_to :+
  end

  it "can use underscores, to be easy on the eyes" do
    1_000_000.should eq 1000000
  end

  it "can be added" do
    (1 + 2).should eq 3
  end

  it "can be subtracted" do
    (3 - 2).should eq 1
  end

  it "can be multiplied" do
    (3 * 2).should eq 6
  end

  it "support exponentiation" do
    (3 ** 5).should eq 243
  end

  it "support modulo" do
    (5 % 3).should eq 2
  end

  it "are usually of class Fixnum" do
    9.should be_a Fixnum
  end

  it "that are are very large are of class Bignum" do
    35241578750190436536.should be_a Bignum
  end

  it "are returned from Integers calculations" do
   (8.0 * 9.2).should eq 73.6 
  end
end

describe "Floats" do

  it "have their own class" do
    (1.0).should be_a Float
  end

  it "are returned when calculations include a Float" do
   (8.0 * 9.2).should be_a Float
  end

end

describe "Other Ruby classes" do

  it "EXAMPLE THAT TESTS A Rational, Complex OR BigDecimal value" do
   (1.0e+25 * 9999999999999999900000000.0).should eq 1.0000000000000003e+50 
  end
end
