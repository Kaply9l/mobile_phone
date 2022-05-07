# frozen_string_literal: true

require 'faker'

# table brands

brand_attributes = []

brand_attributes.each do |attr|
  Brand.create(attr) unless Brand.where(attr).first
end

# - - - - -

# table categories

apple = Category.create(title: 'Apple', bytitle: 'Apple', keywords: 'Apple', description: 'Apple')

honor = Category.create(title: 'HONOR', bytitle: 'HONOR', keywords: 'HONOR', description: 'HONOR')

samsung = Category.create(title: 'Samsung', bytitle: 'Samsung', keywords: 'Samsung', description: 'Samsung')


# - - - - - - - -

# table products
product_attributes = [
  {
    category_id: '1',
    title: 'Apple iPhone SE 2020 64 GB white',
    bytitle: 'apple iphone se 2020 64 gb white',
    content: Faker::Lorem.sentence(word_count: 20),
    price: 625,
    status: 1,
    keywords: 'keywords',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'Apple iPhone SE 2020 64 GB white.jpg',
    hit: 1
  },
  {
    category_id: '2',
    title: 'Honor 50 Lite 128 GB silver',
    bytitle: 'honor 50 lite 128 gb silver',
    content: Faker::Lorem.sentence(word_count: 20),
    price: 330,
    status: 1,
    keywords: 'keywords',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'Honor 50 Lite 128 GB silver.jpg',
    hit: 1
  },
  {
    category_id: '3',
    title: 'Samsung Galaxy A03 Core 32 GB blue',
    bytitle: 'samsung galaxy a03 core 32 gb blue',
    content: Faker::Lorem.sentence(word_count: 20),
    price: 135, #Faker::Commerce.price,
    status: 1,
    keywords: 'keywords',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'Samsung Galaxy A03 Core 32 GB blue.jpg',
    hit: 1
  },
]

product_attributes.each do |attr|
  Product.create(attr) unless Product.where(attr).first
end

# - - - - -
