class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :author, :uniqueness => true
  validates :content_body, :presence => true, length: { minimum: 50 }
  validates :rating, :presence => true, :numericality => true

end
