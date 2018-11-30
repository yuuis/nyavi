class Cat < ActiveRecord::Base
  has_many :posts
  belongs_to :shop
end
