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
  tweet_array = tweet.split
  tweet_array.collect do |word|
     if dictionary.keys.include?(word.downcase)
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

def selective_tweet_shortener(tweet)
  tweet.collect do |t|
    if tweet.length > 140
      true
    end
  end.bulk_tweet_shortener
end
