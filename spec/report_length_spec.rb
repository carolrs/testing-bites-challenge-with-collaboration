require 'report_length'

RSpec.describe "report_length method" do
  it "returns a message with the length of the string given" do
    result = report_length("mississippi")
    expect(result).to eq "This string was 11 characters long."
  end

  it "return zero when string given is empty" do 
    result = report_length("")
    expect(result).to eq "This string was 0 characters long."
  end

  it "return error when string given is number" do 
    result = report_length(0)
    expect(result).to eq "Error"
  end
end