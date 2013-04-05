class Trip < ActiveRecord::Base
  attr_accessible :author, :content, :summary, :title
end
