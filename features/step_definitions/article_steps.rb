Given /^I have articles called "(.*)"$/ do  |titles|
  titles.split("'").each { |title| Article.create :title => title }
end
When /^I should have ([0-9]) articles?$/ do |count|
  Article.count.should == count.to_i
end
Given /^I have no articles$/ do
  Article.delete_all
end
Given /^I have an article with title "(.*)" and body text "(.*)"$/ do |title, body|
  Article.create :title => title, :body => body
end
Then /^I should have an article titled "(.*)"$/ do |title|
  Article.find(:all, :conditions => {:title => title}).count.should == 1
end
When /^I should not have an article titled "(.*)"$/ do |title|
  Article.find(:all, :conditions => {:title => title}).count.should == 0
end
Given /^I have an article "([^\"]*)" with tags "([^\"]*)"$/ do |article_title, tags|
  article = Article.new
  article.title = article_title
  article.tags = Tag.get_tag_list_from_comma_list tags
  article.save
end