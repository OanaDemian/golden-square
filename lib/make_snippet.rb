# A method called make_snippet that takes a string as an argument and returns the first five words and then a '...' if there are more than that.

def make_snippet(text)
  paragraph_length = text.split(" ").length
  if paragraph_length <= 5
    text
  else
    text + "..."
  end
end