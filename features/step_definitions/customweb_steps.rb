When /^I follow "([^\"]*)" for "([^\"]*)"$/ do |link, article_title|
  article = Article.find_by_title article_title
  click_link link + "_" + article.id.to_s
end