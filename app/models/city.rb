class City < ActiveRecord::Base
  attr_accessible :country_id, :description, :name, :province_id
end
