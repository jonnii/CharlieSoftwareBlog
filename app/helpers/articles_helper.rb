module ArticlesHelper
  def format_date(article)
    article.created_at.in_time_zone("London").strftime("Posted %A, %B %d %Y at %H:%M")
  end
end
