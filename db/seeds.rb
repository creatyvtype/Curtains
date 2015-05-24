require 'faker'

counter = 1
8.times do
  Address.create(neighborhood: Faker::Commerce.color, street: Faker::Address.street_address, city: "San Francisco", state: "CA", zip: 94111)
  counter += 1
end


Company.create(name: Faker::Company.name, style: Faker::Commerce.department(1), description: Faker::Lorem.paragraph, phone: Faker::Number.number(10), url: Faker::Internet.url, email: Faker::Internet.email, address_id: 1, image: "p1.jpg")

Company.create(name: Faker::Company.name, style: Faker::Commerce.department(1), description: Faker::Lorem.paragraph, phone: Faker::Number.number(10), url: Faker::Internet.url, email: Faker::Internet.email, address_id: 5, image: "p4.jpg")

Production.create(company_id: 1, title: Faker::Commerce.product_name, writer: Faker::Name.name, director: Faker::Name.name, genre: Faker::Commerce.department(1), description: Faker::Lorem.paragraph, url: Faker::Internet.url, email: Faker::Internet.email, image: "p2.jpg")

Production.create(company_id: 1, title: Faker::Commerce.product_name, writer: Faker::Name.name, director: Faker::Name.name, genre: Faker::Commerce.department(1), description: Faker::Lorem.paragraph, url: Faker::Internet.url, email: Faker::Internet.email, image: "p3.jpg")

Production.create(company_id: 2, title: Faker::Commerce.product_name, writer: Faker::Name.name, director: Faker::Name.name, genre: Faker::Commerce.department(1), description: Faker::Lorem.paragraph, url: Faker::Internet.url, email: Faker::Internet.email, image: "p5.jpg")

Production.create(company_id: 2, title: Faker::Commerce.product_name, writer: Faker::Name.name, director: Faker::Name.name, genre: Faker::Commerce.department(1), description: Faker::Lorem.paragraph, url: Faker::Internet.url, email: Faker::Internet.email, image: "p6.jpg")


counter = 1
addy_counter = 1
4.times do
  2.times do
    Performance.create(address_id: addy_counter, production_id: counter, date_and_time: Faker::Time.between(10.days.ago, Time.now, :evening), price: Faker::Number.decimal(2,2))
    addy_counter += 1
  end
  counter += 1
end

VoteType.create(criteria: "Venue", description: "How was the atmosphere? Was the staff helpful? How were concessions? Lines? Bathroom cleanliness?")

VoteType.create(criteria: "Design", description: "How was the lighting? Sound? Costumes? Set? Special effects?")

VoteType.create(criteria: "Story", description: "How was storytelling? The direction? The writing of the piece?")

VoteType.create(criteria: "Acting", description: "Were the performers believable? How were their skills during the piece?")