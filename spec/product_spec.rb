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
                          
    
    it 'should not create a product if the name is missing' do
    @category = Category.new(name: "Testing")
    @product =   Product.new(
                            name: nil,
                            price_cents: 200,
                            description: "SMALL AND DURABLE",
                            :category => @category,
                            quantity: 35
                            )    
                            @product.valid?
                            expect(@product.errors[:name]).to include("can\'t be blank")
                          end                     
                          
    it 'should not create a product if the price is missing' do
      @category = Category.new(name: "Testing")
      @product =   Product.new(
                              name: "testing",
                              price_cents: nil,
                              description: "SMALL AND DURABLE",
                              :category => @category,
                              quantity: 35
                              )    
                              @product.valid?
                              expect(@product.errors[:price]).to include("can\'t be blank")
                            end    


      it 'should not create a product if the quantity is missing' do
      @category = Category.new(name: "Testing")
      @product =   Product.new(
                              name: "testing",
                              price_cents: 200,
                              description: "SMALL AND DURABLE",
                              :category => @category,
                              quantity: nil
                              )    
                              @product.valid?
                              expect(@product.errors[:quantity]).to include("can\'t be blank")
                            end                     

        
    it 'should not create a product if the category is missing' do
      @category = Category.new(name: "Testing")
      @product =   Product.new(
                              name: "testing",
                              price_cents: 200,
                              description: "SMALL AND DURABLE",
                              :category => nil,
                              quantity: 35
                              )    
                              @product.valid?
                              expect(@product.errors[:category]).to include("can\'t be blank")
                              end                     
                            end
                          end
    
