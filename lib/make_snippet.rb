# A method called make_snippet that takes a string as an argument and returns the first five words and then a '...' if there are more than that.

def make_snippet(text)
  words = text.split(" ")
  paragraph_length = words.length
  if paragraph_length <= 5
    text
  else
    words[0..4].join(" ") + "..."
  end
end