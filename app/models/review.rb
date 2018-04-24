class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :author, :uniqueness => true
  validates :content_body, :presence => true
  validates :rating, :presence => true

end
