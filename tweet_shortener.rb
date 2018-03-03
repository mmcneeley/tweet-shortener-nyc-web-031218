# Write your code here.

def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)

  tweet.split.map do |word|
     if dictionary.keys.to_s.include?(word.downcase)
      word = dictionary[word.downcase]
     else
      word
     end
   end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |t|
    puts word_substituter(t)
  end
end

#def bulk_tweet_shortener(tweet)
#  if tweet.length > 140
#    puts word_substituter(tweet)
#  end
#    puts tweet
#end
