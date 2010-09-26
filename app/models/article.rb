class Article < ActiveRecord::Base
  has_and_belongs_to_many :tags
  def tag_list
    tag_string = ""
    self.tags.each do |tag|
      tag_string = tag_string + tag.name + ","
    end
    return tag_string.chop
  end
end
