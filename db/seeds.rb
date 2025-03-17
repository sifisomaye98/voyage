require "open-uri"

puts "Destroying all records..."
Trip.destroy_all
Package.destroy_all
Itinerary.destroy_all
Info.destroy_all
Hotel.destroy_all
Flight.destroy_all
User.destroy_all
Destination.destroy_all

puts "Seeding Destinations..."
paris = Destination.create!(name: "Paris")
puts "Destination 'Paris' created."
new_york = Destination.create!(name: "New York")
puts "Destination 'New York' created."
tokyo = Destination.create!(name: "Tokyo")
puts "Destination 'Tokyo' created."
london = Destination.create!(name: "London")
puts "Destination 'London' created."
sydney = Destination.create!(name: "Sydney")
puts "Destination 'Sydney' created."

puts "Seeding Users..."
user1 = User.create!(email: "me@example.com", password: "password123", name: "User 1")
puts "User 1 created."
user2 = User.create!(email: "me2@example.com", password: "password123", name: "User 2")
puts "User 2 created."
user3 = User.create!(email: "me3@example.com", password: "password123", name: "User 3")
puts "User 3 created."
user4 = User.create!(email: "me4@example.com", password: "password123", name: "User 4")
puts "User 4 created."
user5 = User.create!(email: "me5@example.com", password: "password123", name: "User 5")
puts "User 5 created."

puts "Seeding Flights..."
flight1 = Flight.create!(airline: "Air France", departure: "New York", arrival: "Paris", price: 800)
puts "Flight from New York to Paris created."
flight2 = Flight.create!(airline: "United Airlines", departure: "Chicago", arrival: "Tokyo", price: 1000)
puts "Flight from Chicago to Tokyo created."
flight3 = Flight.create!(airline: "British Airways", departure: "London", arrival: "New York", price: 600)
puts "Flight from London to New York created."
flight4 = Flight.create!(airline: "Qantas", departure: "Sydney", arrival: "London", price: 1200)
puts "Flight from Sydney to London created."
flight5 = Flight.create!(airline: "Delta Airlines", departure: "Paris", arrival: "Chicago", price: 750)
puts "Flight from Paris to Chicago created."

puts "Seeding Hotels..."
hotel1 = Hotel.create!(name: "Hotel Ritz", location: "Paris, France", price_per_night: 500)
puts "Hotel 'Hotel Ritz' in Paris created."
hotel2 = Hotel.create!(name: "The Plaza", location: "New York, USA", price_per_night: 700)
puts "Hotel 'The Plaza' in New York created."
hotel3 = Hotel.create!(name: "Shinjuku Granbell Hotel", location: "Tokyo, Japan", price_per_night: 150)
puts "Hotel 'Shinjuku Granbell Hotel' in Tokyo created."
hotel4 = Hotel.create!(name: "The Dorchester", location: "London, UK", price_per_night: 800)
puts "Hotel 'The Dorchester' in London created."
hotel5 = Hotel.create!(name: "Park Hyatt", location: "Sydney, Australia", price_per_night: 400)
puts "Hotel 'Park Hyatt' in Sydney created."

puts "Seeding Infos..."
info1 = Info.create!(visa: "Visa required for all nationalities. Apply online or at the embassy.", safety: "Paris is generally safe, but be cautious in tourist-heavy areas.", destination_id: paris.id)
puts "Info for Paris created."
info2 = Info.create!(visa: "Visa-free travel for many nationalities. Check the embassy website.", safety: "New York is a major city. Stay aware of your surroundings, especially at night.", destination_id: new_york.id)
puts "Info for New York created."
info3 = Info.create!(visa: "Visa required for some nationalities. Apply at the Japanese embassy.", safety: "Tokyo is one of the safest cities in the world. Always stay alert in crowded places.", destination_id: tokyo.id)
puts "Info for Tokyo created."
info4 = Info.create!(visa: "Visa-free for European travelers. Other nationalities can apply for a visa online.", safety: "London is generally safe. Avoid dark alleys at night.", destination_id: london.id)
puts "Info for London created."
info5 = Info.create!(visa: "Visa-free travel for many nationalities. Check the official immigration website.", safety: "Sydney is safe, but always stay cautious in unfamiliar areas.", destination_id: sydney.id)
puts "Info for Sydney created."

puts "Seeding Packages..."
package1 = Package.create!(name: "Paris Backpacker", flight_id: flight1.id, hotel_id: hotel1.id)
puts "Package 'Paris Backpacker' created."
package2 = Package.create!(name: "Paris Luxury", flight_id: flight1.id, hotel_id: hotel1.id)
puts "Package 'Paris Luxury' created."
package3 = Package.create!(name: "Paris Adventure", flight_id: flight1.id, hotel_id: hotel1.id)
puts "Package 'Paris Adventure' created."
package4 = Package.create!(name: "Paris Culture", flight_id: flight1.id, hotel_id: hotel1.id)
puts "Package 'Paris Culture' created."

package5 = Package.create!(name: "New York Backpacker", flight_id: flight3.id, hotel_id: hotel2.id)
puts "Package 'New York Backpacker' created."
package6 = Package.create!(name: "New York Luxury", flight_id: flight3.id, hotel_id: hotel2.id)
puts "Package 'New York Luxury' created."
package7 = Package.create!(name: "New York Adventure", flight_id: flight3.id, hotel_id: hotel2.id)
puts "Package 'New York Adventure' created."
package8 = Package.create!(name: "New York Culture", flight_id: flight3.id, hotel_id: hotel2.id)
puts "Package 'New York Culture' created."

puts "Seeding Packages for Tokyo..."
package9 = Package.create!(name: "Tokyo Backpacker", flight_id: flight2.id, hotel_id: hotel3.id)
puts "Package 'Tokyo Backpacker' created."
package10 = Package.create!(name: "Tokyo Luxury", flight_id: flight2.id, hotel_id: hotel3.id)
puts "Package 'Tokyo Luxury' created."
package11 = Package.create!(name: "Tokyo Adventure", flight_id: flight2.id, hotel_id: hotel3.id)
puts "Package 'Tokyo Adventure' created."
package12 = Package.create!(name: "Tokyo Culture", flight_id: flight2.id, hotel_id: hotel3.id)
puts "Package 'Tokyo Culture' created."

puts "Seeding Packages for London..."
package13 = Package.create!(name: "London Backpacker", flight_id: flight3.id, hotel_id: hotel4.id)
puts "Package 'London Backpacker' created."
package14 = Package.create!(name: "London Luxury", flight_id: flight3.id, hotel_id: hotel4.id)
puts "Package 'London Luxury' created."
package15 = Package.create!(name: "London Adventure", flight_id: flight3.id, hotel_id: hotel4.id)
puts "Package 'London Adventure' created."
package16 = Package.create!(name: "London Culture", flight_id: flight3.id, hotel_id: hotel4.id)
puts "Package 'London Culture' created."

puts "Seeding Packages for Sydney..."
package17 = Package.create!(name: "Sydney Backpacker", flight_id: flight4.id, hotel_id: hotel5.id)
puts "Package 'Sydney Backpacker' created."
package18 = Package.create!(name: "Sydney Luxury", flight_id: flight4.id, hotel_id: hotel5.id)
puts "Package 'Sydney Luxury' created."
package19 = Package.create!(name: "Sydney Adventure", flight_id: flight4.id, hotel_id: hotel5.id)
puts "Package 'Sydney Adventure' created."
package20 = Package.create!(name: "Sydney Culture", flight_id: flight4.id, hotel_id: hotel5.id)
puts "Package 'Sydney Culture' created."

puts "Seeding Trips..."
trip1 = Trip.create!(
  budget: 3000,
  start_date: Date.today + 10.days,
  end_date: Date.today + 15.days,
  user_id: user1.id,
  category: 1,
  package_id: package1.id,
  destination_id: paris.id
)
puts "Trip for Paris created."
trip2 = Trip.create!(
  budget: 2500,
  start_date: Date.today + 5.days,
  end_date: Date.today + 10.days,
  user_id: user2.id,
  category: 2,
  package_id: package2.id,
  destination_id: new_york.id
)
puts "Trip for New York created."
trip3 = Trip.create!(
  budget: 4000,
  start_date: Date.today + 15.days,
  end_date: Date.today + 20.days,
  user_id: user3.id,
  category: 3,
  package_id: package3.id,
  destination_id: tokyo.id
)
puts "Trip for Tokyo created."
trip4 = Trip.create!(
  budget: 3500,
  start_date: Date.today + 20.days,
  end_date: Date.today + 25.days,
  user_id: user4.id,
  category: 4,
  package_id: package4.id,
  destination_id: london.id
)
puts "Trip for London created."
trip5 = Trip.create!(
  budget: 5000,
  start_date: Date.today + 25.days,
  end_date: Date.today + 30.days,
  user_id: user5.id,
  category: 5,
  package_id: package5.id,
  destination_id: sydney.id
)

#Attaching one photo to each trip
file = URI.parse("https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1\?q\=80\&w\=2940\&auto\=format\&fit\=crop\&ixlib\=rb-4.0.3\&ixid\=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open #photo1
trip1.photo.attach(io: file, filename: "trip_1.jpg", content_type: "image/png")
trip1.save!
file = URI.parse("http://res.cloudinary.com/dymquyp2y/image/upload/v1741795173/bcshliedvsaswlmisscd.jpg").open #photo2
trip2.photo.attach(io: file, filename: "trip_2.jpg", content_type: "image/png")
trip2.save!
file = URI.parse("http://res.cloudinary.com/dymquyp2y/image/upload/v1741795183/ic9qmu6j8x47brsqpk2x.jpg").open #photo3
trip3.photo.attach(io: file, filename: "trip_3.jpg", content_type: "image/png")
trip3.save!
file = URI.parse("http://res.cloudinary.com/dymquyp2y/image/upload/v1741795195/rmudambo0bk7qi8gsy7d.jpg").open #photo4
trip4.photo.attach(io: file, filename: "trip_4.jpg", content_type: "image/png")
trip4.save!
file = URI.parse("http://res.cloudinary.com/dymquyp2y/image/upload/v1741795204/bqgj69aeuvvnjnql9uty.jpg").open #photo5
trip5.photo.attach(io: file, filename: "trip_5.jpg", content_type: "image/png")
trip5.save!

#Attaching two photos for each package to the seed file
# file1 = URI.parse("https://images.unsplash.com/19/nomad.JPG?q=80&w=2515&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1530789253388-582c481c54b0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package1.photos.attach(io: file1, filename: "pack1.jpg", content_type: "image/png")
# package1.photos.attach(io: file2, filename: "package1.jpg", content_type: "image/jpeg")
# package1.save

# file1 = URI.parse("https://images.unsplash.com/photo-1512100356356-de1b84283e18?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bHV4dXJ5JTIwdHJhdmVsZXJ8ZW58MHx8MHx8fDA%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1512757776214-26d36777b513?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package2.photos.attach(io: file1, filename: "pack2.jpg", content_type: "image/png")
# package2.photos.attach(io: file2, filename: "package2.jpg", content_type: "image/jpeg")
# package2.save

# file1 = URI.parse("https://images.unsplash.com/photo-1604394823436-623c4eaf029b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJhY2twYWNrZXJ8ZW58MHx8MHx8fDA%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1528543606781-2f6e6857f318?q=80&w=2001&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package3.photos.attach(io: file1, filename: "pack3.jpg", content_type: "image/png")
# package3.photos.attach(io: file2, filename: "package3.jpg", content_type: "image/jpeg")
# package3.save

# file1 = URI.parse("https://images.unsplash.com/photo-1498804103079-a6351b050096?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://plus.unsplash.com/premium_photo-1680831748734-87103434f0f5?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package4.photos.attach(io: file1, filename: "pack4.jpg", content_type: "image/png")
# package4.photos.attach(io: file2, filename: "package4.jpg", content_type: "image/jpeg")
# package4.save

# file1 = URI.parse("https://images.unsplash.com/photo-1495706891067-35a06798dbca?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1507525428034-b723cf961d3e?q=80&w=2946&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package5.photos.attach(io: file1, filename: "pack5.jpg", content_type: "image/png")
# package5.photos.attach(io: file2, filename: "package5.jpg", content_type: "image/jpeg")
# package5.save

# file1 = URI.parse("https://images.unsplash.com/photo-1500627964684-141351970a7f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bHV4dXJ5JTIwdHJhdmVsZXJ8ZW58MHx8MHx8fDA%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?q=80&w=2842&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package6.photos.attach(io: file1, filename: "pack6.jpg", content_type: "image/png")
# package6.photos.attach(io: file2, filename: "package6.jpg", content_type: "image/jpeg")
# package6.save

# file1 = URI.parse("https://images.unsplash.com/photo-1501761095094-94d36f57edbb?q=80&w=1982&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://plus.unsplash.com/premium_photo-1676122796020-19c6df3a78b5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package7.photos.attach(io: file1, filename: "pack7.jpg", content_type: "image/png")
# package7.photos.attach(io: file2, filename: "package7.jpg", content_type: "image/jpeg")
# package7.save

# file1 = URI.parse("https://images.unsplash.com/photo-1583267575395-8544fb0de4da?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1507608616759-54f48f0af0ee?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package8.photos.attach(io: file1, filename: "pack8.jpg", content_type: "image/png")
# package8.photos.attach(io: file2, filename: "package8.jpg", content_type: "image/jpeg")
# package8.save

# file1 = URI.parse("https://images.unsplash.com/photo-1503220317375-aaad61436b1b?q=80&w=2449&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1539635278303-d4002c07eae3?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package9.photos.attach(io: file1, filename: "pack9.jpg", content_type: "image/png")
# package9.photos.attach(io: file2, filename: "package9.jpg", content_type: "image/jpeg")
# package9.save

# file1 = URI.parse("https://images.unsplash.com/photo-1514282401047-d79a71a590e8?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGx1eHVyeSUyMHRyYXZlbGVyfGVufDB8fDB8fHww").open
# file2 = URI.parse("https://plus.unsplash.com/premium_photo-1677343210638-5d3ce6ddbf85?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package10.photos.attach(io: file1, filename: "pack10.jpg", content_type: "image/png")
# package10.photos.attach(io: file2, filename: "package10.jpg", content_type: "image/jpeg")
# package10.save

# file1 = URI.parse("https://images.unsplash.com/photo-1512036666432-2181c1f26420?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://plus.unsplash.com/premium_photo-1677343210638-5d3ce6ddbf85?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package11.photos.attach(io: file1, filename: "pack11.jpg", content_type: "image/png")
# package11.photos.attach(io: file2, filename: "package11.jpg", content_type: "image/jpeg")
# package11.save

# file1 = URI.parse("https://images.unsplash.com/photo-1680695919961-9a47baa429ce?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1617469165786-8007eda3caa7?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package12.photos.attach(io: file1, filename: "pack12.jpg", content_type: "image/png")
# package12.photos.attach(io: file2, filename: "package12.jpg", content_type: "image/jpeg")
# package12.save

# file1 = URI.parse("https://plus.unsplash.com/premium_photo-1683134229594-bfa9f75d5594?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1565076633790-b0deb5d527c7?q=80&w=2864&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package13.photos.attach(io: file1, filename: "pack13.jpg", content_type: "image/png")
# package13.photos.attach(io: file2, filename: "package13.jpg", content_type: "image/jpeg")
# package13.save

# file1 = URI.parse("https://images.unsplash.com/photo-1522255272218-7ac5249be344?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1674673243921-9e6ab580431f?q=80&w=2896&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package14.photos.attach(io: file1, filename: "pack14.jpg", content_type: "image/png")
# package14.photos.attach(io: file2, filename: "package14.jpg", content_type: "image/jpeg")
# package14.save

# file1 = URI.parse("https://images.unsplash.com/photo-1471400974796-1c823d00a96f?q=80&w=1667&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1502791451862-7bd8c1df43a7?q=80&w=2864&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package15.photos.attach(io: file1, filename: "pack15.jpg", content_type: "image/png")
# package15.photos.attach(io: file2, filename: "package15.jpg", content_type: "image/jpeg")
# package15.save

# file1 = URI.parse("https://images.unsplash.com/photo-1585604663643-805a4a7ebe23?q=80&w=2939&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://plus.unsplash.com/premium_photo-1675745329954-9639d3b74bbf?q=80&w=2335&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package16.photos.attach(io: file1, filename: "pack16.jpg", content_type: "image/png")
# package16.photos.attach(io: file2, filename: "package16.jpg", content_type: "image/jpeg")
# package16.save

# file1 = URI.parse("https://images.unsplash.com/photo-1520466809213-7b9a56adcd45?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8YmFja3BhY2tlcnxlbnwwfHwwfHx8MA%3D%3D").open
# file2 = URI.parse("https://plus.unsplash.com/premium_photo-1661964304872-7b715cf38cd1?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package17.photos.attach(io: file1, filename: "pack17.jpg", content_type: "image/png")
# package17.photos.attach(io: file2, filename: "package17.jpg", content_type: "image/jpeg")
# package17.save

# file1 = URI.parse("https://images.unsplash.com/photo-1605538032404-d7f061325b90?q=80&w=2582&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1528154291023-a6525fabe5b4?q=80&w=2504&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package18.photos.attach(io: file1, filename: "pack18.jpg", content_type: "image/png")
# package18.photos.attach(io: file2, filename: "package18.jpg", content_type: "image/jpeg")
# package18.save

# file1 = URI.parse("https://plus.unsplash.com/premium_photo-1663047386229-637af57cecfe?q=80&w=2938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://images.unsplash.com/photo-1596120236172-231999844ade?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package19.photos.attach(io: file1, filename: "pack19.jpg", content_type: "image/png")
# package19.photos.attach(io: file2, filename: "package19.jpg", content_type: "image/jpeg")
# package19.save

# file1 = URI.parse("https://images.unsplash.com/photo-1570241464320-0a3d89eed76d?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://plus.unsplash.com/premium_photo-1663013123196-f83decee810f?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package20.photos.attach(io: file1, filename: "pack20.jpg", content_type: "image/png")
# package20.photos.attach(io: file2, filename: "package20.jpg", content_type: "image/jpeg")
# package20.save
