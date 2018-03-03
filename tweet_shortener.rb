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
  #puts "#{tweet.class} is the class"
  #puts "#{tweet.length} is the length"
  tweet_array = tweet.split
  #puts "#{tweet_array.inspect} is the new array"
  tweet_array.map do |word|
     if dictionary.keys.to_s.include?(word.downcase)
      dictionary[word.to_sym.downcase]
     else
      word
     end
   end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |tweet|
    puts word_substituter(tweet)
  end
end

#def bulk_tweet_shortener(tweet)
#  if tweet.length > 140
#    puts word_substituter(tweet)
#  end
#    puts tweet
#end
