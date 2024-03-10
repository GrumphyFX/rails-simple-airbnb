# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Flat.create!(
    name: 'Charming Cottage with Ocean View',
    address: '25 Coastal Drive, Malibu, CA 90265',
    description: 'Escape to this charming cottage overlooking the ocean. Tranquil and cozy, with a private patio for breathtaking sunsets.',
    price_per_night: 150,
    number_of_guests: 4
  )
  
  Flat.create!(
    name: 'Rustic Cabin Retreat in the Mountains',
    address: '500 Pine Ridge Trail, Aspen, CO 81611',
    description: 'Experience the serenity of nature in this rustic cabin nestled in the mountains. Ideal for those seeking a peaceful getaway.',
    price_per_night: 100,
    number_of_guests: 2
  )
  
  Flat.create!(
    name: 'Artistic Loft in Historic District',
    address: '18 Bohemian Street, Paris, France',
    description: 'Immerse yourself in the vibrant culture of the historic district. This artistic loft boasts unique decor and is surrounded by cafes and galleries.',
    price_per_night: 90,
    number_of_guests: 2
  )
  
  Flat.create!(
    name: 'Luxurious Penthouse with Skyline Views',
    address: '500 Grand Avenue, Los Angeles, CA 90071',
    description: 'Indulge in luxury with this penthouse offering panoramic views of the city skyline. High-end amenities and stylish furnishings for a glamorous stay.',
    price_per_night: 300,
    number_of_guests: 6
  )
  