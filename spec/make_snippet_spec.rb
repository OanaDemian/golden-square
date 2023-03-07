require 'make_snippet'

RSpec.describe "make_snippet" do
  it "returns a string of one word" do
    result = make_snippet("Ruby")
    expect(result).to eq "Ruby"
  end

  it "returns the number of words in a paragraph containing less than 5 words" do
    result =  make_snippet("test driven development")
    expect(result.split(" ").length).to eq(3)
  end

  it "returns 5 if the paragraph contains more than 5 words" do
    result =  make_snippet("test driven development is one of the best practices in software development")
    expect(result.split(" ").length).to eq(5)
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