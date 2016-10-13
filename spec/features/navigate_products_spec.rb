require 'rails_helper'

describe "Navigating products" do
  before { login_as user }

  let(:user) { create :user }
  let(:product) { create :product, user: user }

  it "allows navigation from the detail page to the listing page" do
    visit product_url(product)

    click_link "Back"

    expect(current_path).to eq(products_path)
  end
  it "allows navigation from the listing page to the detail page" do
    visit products_url

    click_link "View"

    expect(current_path).to eq(product_path(room))
  end
end