require 'rails_helper'

describe 'add a new product to db' do
  it 'adds a product' do
    visit new_product_path
    fill_in 'Name', :with => 'Sushi'
    fill_in 'Cost', :with => '12'
    fill_in 'Origin', :with => 'Japan'
    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end
end
