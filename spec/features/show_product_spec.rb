require 'rails_helper'

describe "Viewing an individual product" do
  let(:user) { create :user }
  let(:product) { create :product, user: user }

  it "shows the product's details" do
    visit product_url(product)

    expect(page).to have_text(product.home_type)
    expect(page).to have_text(product.accommodate)
    expect(page).to have_text(product.bedproduct_count)
    expect(page).to have_text(product.bathproduct_count)
    expect(page).to have_text(product.listing_name)
    expect(page).to have_text(product.description)
    expect(page).to have_text(product.address)
  end
end