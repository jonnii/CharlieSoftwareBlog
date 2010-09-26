class Tag < ActiveRecord::Base
  has_and_belongs_to_many :articles

  def self.get_tag_list_from_comma_list(tags)
    tag_array = tags.split(',')
    0.upto(tag_array.count - 1) do |i|
      trimmed_tag = tag_array[i].strip! || tag_array[i] if tag_array[i]
      tag_array[i] = Tag.find_or_create_by_name(trimmed_tag)
    end
    return tag_array
  end
end
