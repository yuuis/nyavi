class Post < ActiveRecord::Base
  has_many :images
  belongs_to :cat
end
