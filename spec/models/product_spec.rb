# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'is valid with valid attributes' do
      @category = Category.create(name: 'Category1')
      product1 = Product.new(name: 'Product1', price_cents: 2000, quantity: 3, category_id: @category.id)
      expect(product1).to be_valid
    end

    it 'is not valid without a name' do
      @category = Category.create(name: 'Category1')
      product1 = Product.new(name: nil, price_cents: 2000, quantity: 3, category_id: @category.id)
      expect(product1).to_not be_valid
    end

    it 'is not valid without a price' do
      @category = Category.create(name: 'Category1')
      product1 = Product.new(name: 'Product1', price_cents: nil, quantity: 3, category_id: @category.id)
      expect(product1).to_not be_valid
    end

    it 'is not valid without a quantity' do
      @category = Category.create(name: 'Category1')
      product1 = Product.new(name: 'Product1', price_cents: 2000, quantity: nil, category_id: @category.id)
      expect(product1).to_not be_valid
    end

    it 'is not valid without a category' do
      product1 = Product.new(name: 'Product1', price_cents: 2000, quantity: 3, category_id: nil)
      expect(product1).to_not be_valid
    end
  end
end # rspec end
