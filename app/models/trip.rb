class Trip < ActiveRecord::Base
  attr_accessible :author_id, :content, :summary, :title
  belongs_to :author, class_name: :User
end
