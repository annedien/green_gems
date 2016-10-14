require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      product = Product.new(name: "")
      product.valid?
      expect(product.errors).to have_key(:name)
    end

    it "is invalid without a species" do
      product = Product.new(species: "")
      product.valid?
      expect(product.errors).to have_key(:species)
    end

    it "is invalid without a maintenance" do
      product = Product.new(maintenance: "")
      product.valid?
      expect(product.errors).to have_key(:maintenance)
    end

    it "is invalid without a price" do
      product = Product.new(price: "")
      product.valid?
      expect(product.errors).to have_key(:price)
    end

    #hier zit ergens een fout: expected #has_key?(:description) to return true, got false
    it "is invalid with a description longer than 500 characters" do
      product = Product.new(description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. ")
      product.valid?
      expect(product.errors).to have_key(:description)
    end

    it "is invalid without a location" do
      product = Product.new(location: "")
      product.valid?
      expect(product.errors).to have_key(:location)
    end

    it "is invalid without needs_sun" do
      product = Product.new(needs_sun: "")
      product.valid?
      expect(product.errors).to have_key(:needs_sun)
    end

    it "is invalid without needs_shade" do
      product = Product.new(needs_shade: "")
      product.valid?
      expect(product.errors).to have_key(:needs_shade)
    end

    it "is invalid without needs_halfshade" do
      product = Product.new(needs_halfshade: "")
      product.valid?
      expect(product.errors).to have_key(:needs_halfshade)
    end

  end
end