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
  puts tweet.class
  tweet_array = tweet.to_s.split
  puts tweet_array.inspect
  tweet_array.map do |word|
     if dictionary.keys.to_s.include?(word)
      dictionary[word.to_sym]
     else
      word
     end
   end.join(" ")
end

def bulk_tweet_shortener(tweet)
  if tweet.length > 140
    puts word_substituter(tweet.to_s)
  end
    puts tweet
end
