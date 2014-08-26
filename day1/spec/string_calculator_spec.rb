require "spec_helper"

describe StringCalculator do
  it "takes and empty string and returns 0" do
    expect(StringCalculator.add("")).to eq(0)
  end
  
  it "takes string representation of a single number and returns that integer" do
    expect(StringCalculator.add("4")).to eq(4)
  end
  
  it "takes string of two numbers separated by a comma and adds them" do
    expect(StringCalculator.add("4, 5")).to eq(9)
  end
  
  it "takes a string of any number of numbers separated by comma and adds them" do
    expect(StringCalculator.add("4, 5, 6, 7")).to eq(22)
  end
  
  it "takes a string of any number of numbers separated by newline and adds them" do
    expect(StringCalculator.add("4\n5\n6")).to eq(15)
  end
  
  # it "raises the error 'Negatives not allowed.' when passed a negative value" do
  #   expect(StringCalculator.add("-4, 6")).to eq("Negatives not allowed.")
  # end
  
  it "if accumulates the negative numbers and returns them with the error message" do
    expect(StringCalculator.add("-1, -5, -10")).to eq("Negatives not allowed. -1, -5, -10 are invalid")
  end
  
  it "ignores numbers greater than 1000" do
    expect(StringCalculator.add("4\n1001\n6")).to eq(10)
  end
  
  
end