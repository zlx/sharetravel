class User < ActiveRecord::Base
  attr_accessible :email, :image, :name, :password, :pasword_confirmation
end
