require 'make_snippet'

RSpec.describe "make_snippet" do
  it "returns a string" do
    result = make_snippet("I want nail test driven development.")
    expect(result).to eq "I want nail test driven development."
  end
end