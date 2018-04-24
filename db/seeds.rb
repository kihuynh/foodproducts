Product.destroy_all
Review.destroy_all

50.times do |index|
  product = Product.create!(
    name: Faker::Food.unique.dish,
    cost: Faker::Commerce.price,
    origin: Faker::Address.country
    )

  5.times do |index|
    product.reviews.create!(
      author: Faker::Book.unique.author,
      content_body: Faker::Hipster.sentence(50),
      rating: Faker::Number.between(1, 5),
      product_id: @product_id
      )
  end
end

p "created #{Product.count} products"
p "created #{Review.count} reviews"
