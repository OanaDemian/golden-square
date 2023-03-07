require 'make_snippet'

RSpec.describe "make_snippet" do
  xit "returns a string" do
    result = make_snippet("I want nail test driven development.")
    expect(result).to eq "I want nail test driven development."
  end

  xit "returns the number of words in the sentence" do
    result =  make_snippet("I want nail test driven development.")
    expect(result).to eq(6)
  end

  it "returns entire text if the paragraph is 5 words or shorter" do
    result =  make_snippet("I like coding in Ruby.")
    expect(result).to eq("I like coding in Ruby.")
  end

  it "returns first 5 words followed by ... if the paragraph is longer than 5 words" do
    result =  make_snippet("I like coding in Ruby and Javascript.")
    expect(result).to eq("I like coding in Ruby...")
  end
end