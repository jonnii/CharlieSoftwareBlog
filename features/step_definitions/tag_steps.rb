When /^I have tags "(.*)"$/ do |tags|
  tags.split(',').each do |tag|
    Tag.create :name => tag
  end
end
When /^I should have ([0-9]) tags$/ do |count|
  tags = Tag.all
  Tag.count.should == count.to_i
end
When /^I have no tags$/ do
  Tag.delete_all
end