puts "Destroying all records..."
Journal.destroy_all
Package.destroy_all
Trip.destroy_all
Info.destroy_all
User.destroy_all
Destination.destroy_all
puts "All existing records deleted."


puts "Seeding Destinations..."
paris    = Destination.create!(name: "Paris",    latitude: 48.8566, longitude: 2.3522)
new_york = Destination.create!(name: "New York", latitude: 40.7128, longitude: -74.0060)
tokyo    = Destination.create!(name: "Tokyo",    latitude: 35.6895, longitude: 139.6917)
london   = Destination.create!(name: "London",   latitude: 51.5074, longitude: -0.1278)
sydney   = Destination.create!(name: "Sydney",   latitude: -33.8688, longitude: 151.2093)
puts "5 Destinations created."

puts "Seeding Infos..."
Info.create!(
  destination: paris,
  visa: "Visa required for some nationalities. Check the embassy website.",
  safety: "Generally safe, but watch out for pickpockets."
)
Info.create!(
  destination: new_york,
  visa: "Visa waiver for some nationalities. Otherwise, check ESTA.",
  safety: "Busy city; be mindful at night."
)
Info.create!(
  destination: tokyo,
  visa: "Visa-free for many countries. Check official Japan immigration site.",
  safety: "Extremely safe, but remain alert in crowds."
)
Info.create!(
  destination: london,
  visa: "Varies by nationality, check official GOV.UK site.",
  safety: "Generally safe, but be aware of petty crime."
)
Info.create!(
  destination: sydney,
  visa: "eVisitor or ETA required for many nationalities.",
  safety: "Safe overall, exercise normal caution."
)
puts "5 Infos created."

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

puts "Seeding Trips & Packages..."

# -- Trip 1 with 1 selected package --
trip1 = Trip.create!(
  user: user1,
  destination: paris,
  budget: 3000,
  start_date: Date.today + 10,
  end_date: Date.today + 15,
  category: 1
)
Package.create!(
  trip_id: trip1.id,
  name: "Paris Getaway",
  description: "Short but sweet trip to the City of Light.",
  selected: true
)
Journal.create!(
  trip_id: trip1.id,
  title: "Paris Journal",
  date: trip1.start_date,
  content: "Excited for croissants and the Eiffel Tower!"
)

# -- Trip 2 with 1 selected package --
trip2 = Trip.create!(
  user: user2,
  destination: new_york,
  budget: 2500,
  start_date: Date.today + 7,
  end_date: Date.today + 12,
  category: 2
)
Package.create!(
  trip_id: trip2.id,
  name: "NYC Adventure",
  description: "Discover Times Square, Central Park, and more.",
  selected: true
)
Journal.create!(
  trip_id: trip2.id,
  title: "NYC Journal",
  date: trip2.start_date,
  content: "Can't wait for the Big Apple!"
)

# -- Trip 3 with 1 selected package --
trip3 = Trip.create!(
  user: user1,
  destination: tokyo,
  budget: 4000,
  start_date: Date.today + 20,
  end_date: Date.today + 27,
  category: 3
)
Package.create!(
  trip_id: trip3.id,
  name: "Tokyo Express",
  description: "Experience neon-lit streets, ramen, and sushi.",
  selected: true
)
Journal.create!(
  trip_id: trip3.id,
  title: "Tokyo Journal",
  date: trip3.start_date,
  content: "First time in Japan—so excited!"
)

# -- Trip 4 with 1 selected package --
trip4 = Trip.create!(
  user: user1,
  destination: london,
  budget: 3500,
  start_date: Date.today + 30,
  end_date: Date.today + 35,
  category: 4
)
Package.create!(
  trip_id: trip4.id,
  name: "London Highlights",
  description: "Explore Buckingham Palace, Big Ben, and more.",
  selected: true
)
Journal.create!(
  trip_id: trip4.id,
  title: "London Journal",
  date: trip4.start_date,
  content: "Cheerio, London!"
)

# -- Trip 5 with 3 packages (all not selected) --
trip5 = Trip.create!(
  user: user2,
  destination: sydney,
  budget: 5000,
  start_date: Date.today + 40,
  end_date: Date.today + 50,
  category: 5
)
Package.create!(
  trip_id: trip5.id,
  name: "Sydney Backpacker",
  description: "Hostel stay and budget-friendly sightseeing.",
  selected: false
)
Package.create!(
  trip_id: trip5.id,
  name: "Sydney Luxury",
  description: "High-end hotels and private tours.",
  selected: false
)
Package.create!(
  trip_id: trip5.id,
  name: "Sydney Adventure",
  description: "Surf lessons and day trips to local attractions.",
  selected: false
)
Journal.create!(
  trip_id: trip5.id,
  title: "Sydney Journal",
  date: trip5.start_date,
  content: "Heading to Australia soon!"
)

puts "5 Trips created (4 with 1 selected package, 1 with 3 non-selected packages)."
puts "Done seeding!"
