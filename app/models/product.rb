class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true

scope :most_reviews, -> {(
  select("products.id, products.name, products.origin, products.cost, count(reviews.id) as reviews_count")
  .joins(:reviews)
  .group("products.id")
  .order("reviews_count DESC")
  .limit(1)
  )}

scope :id_sort, -> {(
  select("products.id, products.name, products.origin, products.cost")
  .group("products.id")
  .order("products.id DESC")
  .limit(3)
  )}

scope :usa_only, -> {(
  select("products.id, products.name, products.origin, products.cost")
  .group("products.id")
  .where("products.origin = 'USA'")
  .order("products.id DESC")
  )}
end
