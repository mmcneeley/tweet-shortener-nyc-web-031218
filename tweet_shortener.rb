# Write your code here.

def dictionary
  {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split
  puts tweet_array.inspect
  tweet_array.map do |word|
     if dictionary.keys.to_s.include?(word)
      dictionary[word.to_sym]
     else
       puts "weee"
      word
     end
   end.join(" ")
end
