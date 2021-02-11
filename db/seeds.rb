# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'




City.destroy_all
10.times do
  city = City.create!(    
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code,
    )
  end
  
  
User.destroy_all
  20.times do
    user = User.create!(    
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.free_email,
      description: Faker::Lorem.word ,
      age: rand(18..100),
      city_id: City.pluck(:id).sample,
      )
    end
    
    
    
Gossip.destroy_all
20.times do
  gossip = Gossip.create!(    
    title: Faker::Lorem.paragraph_by_chars(number: 14, supplemental: false) ,
    content: Faker::Quote.matz,
    user_id: User.pluck(:id).sample,
  )
end

