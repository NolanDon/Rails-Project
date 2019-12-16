require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should create product if, name, price, category, quantity are present' do
    @category = Category.new(name: "Testing")
    @product =   Product.new(
                            name: "PICKLE RICK KEYCHAIN",
                            price_cents: 200,
                            description: "SMALL AND DURABLE",
                            :category => @category,
                            quantity: 35
                            )    
                            @product.valid?
                            end                     
                           end
                         end