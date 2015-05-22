require 'faker'

counter = 1
10.times do
  Address.create(addressable_id: counter, addressable_type: "Company", neighborhood: Faker::Commerce.color, street: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip)
  counter += 1
end

Production.create(company_id: 1, title: Faker::Commerce.product_name, writer: Faker::Name.name, director: Faker::Name.name, genre: Faker::Commerce.department(1), description: Faker::Lorem.paragraph, url: Faker::Internet.url, email: Faker::Internet.email)
Production.create(company_id: 2, title: Faker::Commerce.product_name, writer: Faker::Name.name, director: Faker::Name.name, genre: Faker::Commerce.department(1), description: Faker::Lorem.paragraph, url: Faker::Internet.url, email: Faker::Internet.email)

counter = 1
5.times do
  Company.create(name: Faker::Company.name, style: Faker::Commerce.department(1), description: Faker::Lorem.paragraph, phone: Faker::Number.number(10), url: Faker::Internet.url, email: Faker::Internet.email, address_id: counter)
  counter += 1
end

3.times do
  Performance.create(address_id: counter, production_id: 1, date_and_time: Faker::Time.between(10.days.ago, Time.now, :evening), price: Faker::Number.decimal(2,2))
  counter += 1
end

2.times do
  Performance.create(address_id: counter, production_id: 1, date_and_time: Faker::Time.between(10.days.ago, Time.now, :evening), price: Faker::Number.decimal(2,2))
  counter += 1
end
