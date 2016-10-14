require 'rails_helper'

describe "Current user views the list of products" do
  before { login_as user }

  let(:user) { create :user, email: "current@user.com" }
  let(:another_user) { create :user, email: "another@user.com" }

  let!(:product1) { create :product, name: "plant Name 1", user: user}
  let!(:product2) { create :product, name: "plant Name 2", user: user }
  let!(:product3) { create :product, name: "plant Name 3", user: user }
  let!(:product4) { create :product, name: "plant Name 4", user: user }
  let!(:product5) { create :product, name: "Another users product", user: another_user }

  it "shows all his products" do
    visit products_url

    expect(page).to have_text("plant Name 1")
    expect(page).to have_text("plant Name 2")
    expect(page).to have_text("plant Name 3")
    expect(page).to have_text("plant Name 4")
    expect(page).to have_text("Plant 5")
  end

  it "does not show other users products" do
    visit products_url

    expect(page).not_to have_text("Another users product")
  end
end