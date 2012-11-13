class Province < ActiveRecord::Base
  attr_accessible :country_id, :description, :name
end
