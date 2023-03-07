require 'make_snippet'

RSpec.describe "make_snippet" do
  xit "returns a string" do
    result = make_snippet("I want nail test driven development.")
    expect(result).to eq "I want nail test driven development."
  end

  it "checks the number of words in the sentence" do
    result =  make_snippet("I want nail test driven development.")
    expect(result).to eq(6)
  end
end