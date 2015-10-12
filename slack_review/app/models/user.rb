class User < ActiveRecord::Base
  has_many :messages
  # unsure if we'll use the rooms I've posted to
  #has_many :rooms, through: :messages
end
