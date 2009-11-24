module TweetHelper
  def twitter_bird(num = 1, rotate = false)
    tweets = Tweet.find_and_store(num)
    if tweets.length > 0
      content_tag(:div, :id => "twitter_bird") do
        tweets.collect{|t| tweet_bubble(t.text)}
      end
    end
  end

  def tweet_bubble(tweet)
    out = ""
    out << content_tag(:div, nil, :class => "tweet_top")
    out << content_tag(:div, :class => "tweet") do
      content_tag(:div, :class => "text") do
        "#{tweet}&nbsp;<img src=\"/images/twitter_bird/rquote.png\" alt=\"rquote\"/>"
      end
    end
    out << content_tag(:div, nil, :class => "tweet_bottom")
  end

end
