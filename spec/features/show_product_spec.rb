require 'rails_helper'

describe "Viewing an individual product" do
  let(:user) { create :user }
  let(:product) { create :product }

  it "shows the product's details" do
    visit product_url(product)

    expect(page).to have_text(product.name)
    expect(page).to have_text(product.species)
    expect(page).to have_text(product.description)
    expect(page).to have_text(product.price)

  end
end