require "open-uri"

puts "Destroying all records..."
Journal.destroy_all
Trip.destroy_all
Package.destroy_all
Itinerary.destroy_all
Info.destroy_all
Hotel.destroy_all
Flight.destroy_all
User.destroy_all
Destination.destroy_all
puts "All existing journal entries deleted."


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
new_york = Destination.create!(name: "New York")
puts "Destination 'New York' created."
los_angeles = Destination.create!(name: "Los Angeles")
puts "Destination 'Los Angeles' created."
paris = Destination.create!(name: "Paris")
puts "Destination 'Paris' created."
london = Destination.create!(name: "London")
puts "Destination 'London' created."
tokyo = Destination.create!(name: "Tokyo")
puts "Destination 'Tokyo' created."
berlin = Destination.create!(name: "Berlin")
puts "Destination 'Berlin' created."
rome = Destination.create!(name: "Rome")
puts "Destination 'Rome' created."
dubai = Destination.create!(name: "Dubai")
puts "Destination 'Dubai' created."
sydney = Destination.create!(name: "Sydney")
puts "Destination 'Sydney' created."
barcelona = Destination.create!(name: "Barcelona")
puts "Destination 'Barcelona' created."
amsterdam = Destination.create!(name: "Amsterdam")
puts "Destination 'Amsterdam' created."
istanbul = Destination.create!(name: "Istanbul")
puts "Destination 'Istanbul' created."
madrid = Destination.create!(name: "Madrid")
puts "Destination 'Madrid' created."
san_francisco = Destination.create!(name: "San Francisco")
puts "Destination 'San Francisco' created."
cairo = Destination.create!(name: "Cairo")
puts "Destination 'Cairo' created."
moscow = Destination.create!(name: "Moscow")
puts "Destination 'Moscow' created."
bangkok = Destination.create!(name: "Bangkok")
puts "Destination 'Bangkok' created."
hong_kong = Destination.create!(name: "Hong Kong")
puts "Destination 'Hong Kong' created."
singapore = Destination.create!(name: "Singapore")
puts "Destination 'Singapore' created."
rio_de_janeiro = Destination.create!(name: "Rio de Janeiro")
puts "Destination 'Rio de Janeiro' created."
cape_town = Destination.create!(name: "Cape Town")
puts "Destination 'Cape Town' created."
buenos_aires = Destination.create!(name: "Buenos Aires")
puts "Destination 'Buenos Aires' created."
seoul = Destination.create!(name: "Seoul")
puts "Destination 'Seoul' created."
mumbai = Destination.create!(name: "Mumbai")
puts "Destination 'Mumbai' created."
mexico_city = Destination.create!(name: "Mexico City")
puts "Destination 'Mexico City' created."
toronto = Destination.create!(name: "Toronto")
puts "Destination 'Toronto' created."
vancouver = Destination.create!(name: "Vancouver")
puts "Destination 'Vancouver' created."
chicago = Destination.create!(name: "Chicago")
puts "Destination 'Chicago' created."
lagos = Destination.create!(name: "Lagos")
puts "Destination 'Lagos' created."
shanghai = Destination.create!(name: "Shanghai")
puts "Destination 'Shanghai' created."
melbourne = Destination.create!(name: "Melbourne")
puts "Destination 'Melbourne' created."
lisbon = Destination.create!(name: "Lisbon")
puts "Destination 'Lisbon' created."
kuala_lumpur = Destination.create!(name: "Kuala Lumpur")
puts "Destination 'Kuala Lumpur' created."
montreal = Destination.create!(name: "Montreal")
puts "Destination 'Montreal' created."
athens = Destination.create!(name: "Athens")
puts "Destination 'Athens' created."
vienna = Destination.create!(name: "Vienna")
puts "Destination 'Vienna' created."
edinburgh = Destination.create!(name: "Edinburgh")
puts "Destination 'Edinburgh' created."
zurich = Destination.create!(name: "Zurich")
puts "Destination 'Zurich' created."

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
flight6 = Flight.create!(airline: "Emirates", departure: "Berlin", arrival: "Barcelona", price: 950)
puts "Flight from Berlin to Barcelona created."
flight7 = Flight.create!(airline: "Lufthansa", departure: "Rome", arrival: "Dubai", price: 1200)
puts "Flight from Rome to Dubai created."
flight8 = Flight.create!(airline: "Singapore Airlines", departure: "Sydney", arrival: "Singapore", price: 850)
puts "Flight from Sydney to Singapore created."
flight9 = Flight.create!(airline: "Turkish Airlines", departure: "Istanbul", arrival: "Madrid", price: 700)
puts "Flight from Istanbul to Madrid created."
flight10 = Flight.create!(airline: "American Airlines", departure: "San Francisco", arrival: "Cairo", price: 950)
puts "Flight from San Francisco to Cairo created."
flight11 = Flight.create!(airline: "Aeroflot", departure: "Moscow", arrival: "Bangkok", price: 850)
puts "Flight from Moscow to Bangkok created."
flight12 = Flight.create!(airline: "Cathay Pacific", departure: "Hong Kong", arrival: "Paris", price: 1050)
puts "Flight from Hong Kong to Paris created."
flight13 = Flight.create!(airline: "Qatar Airways", departure: "Singapore", arrival: "Rio de Janeiro", price: 1300)
puts "Flight from Singapore to Rio de Janeiro created."
flight14 = Flight.create!(airline: "South African Airways", departure: "Cape Town", arrival: "New York", price: 1200)
puts "Flight from Cape Town to New York created."
flight15 = Flight.create!(airline: "Korean Air", departure: "Seoul", arrival: "Buenos Aires", price: 1400)
puts "Flight from Seoul to Buenos Aires created."
flight16 = Flight.create!(airline: "Jet Airways", departure: "Mumbai", arrival: "Toronto", price: 1100)
puts "Flight from Mumbai to Toronto created."
flight17 = Flight.create!(airline: "AeroMexico", departure: "Mexico City", arrival: "Vancouver", price: 750)
puts "Flight from Mexico City to Vancouver created."
flight18 = Flight.create!(airline: "Air Canada", departure: "Toronto", arrival: "Chicago", price: 550)
puts "Flight from Toronto to Chicago created."
flight19 = Flight.create!(airline: "United Airlines", departure: "Vancouver", arrival: "Shanghai", price: 1000)
puts "Flight from Vancouver to Shanghai created."
flight20 = Flight.create!(airline: "Air New Zealand", departure: "Melbourne", arrival: "Lisbon", price: 1300)
puts "Flight from Melbourne to Lisbon created."
flight21 = Flight.create!(airline: "TAP Air Portugal", departure: "Lisbon", arrival: "Kuala Lumpur", price: 1200)
puts "Flight from Lisbon to Kuala Lumpur created."
flight22 = Flight.create!(airline: "Air France", departure: "Montreal", arrival: "Athens", price: 950)
puts "Flight from Montreal to Athens created."
flight23 = Flight.create!(airline: "Austrian Airlines", departure: "Vienna", arrival: "Edinburgh", price: 800)
puts "Flight from Vienna to Edinburgh created."
flight24 = Flight.create!(airline: "Swiss International Air Lines", departure: "Zurich", arrival: "Madrid", price: 850)
puts "Flight from Zurich to Madrid created."

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
hotel6 = Hotel.create!(name: "Hotel Adlon Kempinski", location: "Berlin, Germany", price_per_night: 600)
puts "Hotel 'Hotel Adlon Kempinski' in Berlin created."
hotel7 = Hotel.create!(name: "Hotel Artemide", location: "Rome, Italy", price_per_night: 350)
puts "Hotel 'Hotel Artemide' in Rome created."
hotel8 = Hotel.create!(name: "Burj Al Arab Jumeirah", location: "Dubai, UAE", price_per_night: 1500)
puts "Hotel 'Burj Al Arab Jumeirah' in Dubai created."
hotel9 = Hotel.create!(name: "The Langham", location: "Barcelona, Spain", price_per_night: 450)
puts "Hotel 'The Langham' in Barcelona created."
hotel10 = Hotel.create!(name: "The Dylan Hotel", location: "Amsterdam, Netherlands", price_per_night: 300)
puts "Hotel 'The Dylan Hotel' in Amsterdam created."
hotel11 = Hotel.create!(name: "Four Seasons Hotel", location: "Istanbul, Turkey", price_per_night: 500)
puts "Hotel 'Four Seasons Hotel' in Istanbul created."
hotel12 = Hotel.create!(name: "The Ritz-Carlton", location: "Madrid, Spain", price_per_night: 600)
puts "Hotel 'The Ritz-Carlton' in Madrid created."
hotel13 = Hotel.create!(name: "The Fairmont", location: "San Francisco, USA", price_per_night: 550)
puts "Hotel 'The Fairmont' in San Francisco created."
hotel14 = Hotel.create!(name: "Mena House", location: "Cairo, Egypt", price_per_night: 200)
puts "Hotel 'Mena House' in Cairo created."
hotel15 = Hotel.create!(name: "The Moscow Hotel", location: "Moscow, Russia", price_per_night: 350)
puts "Hotel 'The Moscow Hotel' in Moscow created."
hotel16 = Hotel.create!(name: "The Peninsula", location: "Bangkok, Thailand", price_per_night: 400)
puts "Hotel 'The Peninsula' in Bangkok created."
hotel17 = Hotel.create!(name: "The Landmark Mandarin Oriental", location: "Hong Kong, China", price_per_night: 700)
puts "Hotel 'The Landmark Mandarin Oriental' in Hong Kong created."
hotel18 = Hotel.create!(name: "Marina Bay Sands", location: "Singapore", price_per_night: 600)
puts "Hotel 'Marina Bay Sands' in Singapore created."
hotel19 = Hotel.create!(name: "Copacabana Palace", location: "Rio de Janeiro, Brazil", price_per_night: 500)
puts "Hotel 'Copacabana Palace' in Rio de Janeiro created."
hotel20 = Hotel.create!(name: "One&Only Cape Town", location: "Cape Town, South Africa", price_per_night: 450)
puts "Hotel 'One&Only Cape Town' in Cape Town created."
hotel21 = Hotel.create!(name: "Palacio Duhau", location: "Buenos Aires, Argentina", price_per_night: 350)
puts "Hotel 'Palacio Duhau' in Buenos Aires created."
hotel22 = Hotel.create!(name: "The Shilla", location: "Seoul, South Korea", price_per_night: 300)
puts "Hotel 'The Shilla' in Seoul created."
hotel23 = Hotel.create!(name: "Taj Mahal Palace", location: "Mumbai, India", price_per_night: 600)
puts "Hotel 'Taj Mahal Palace' in Mumbai created."
hotel24 = Hotel.create!(name: "Hotel Maria Isabel", location: "Mexico City, Mexico", price_per_night: 250)
puts "Hotel 'Hotel Maria Isabel' in Mexico City created."

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
info6 = Info.create!(visa: "Visa required for some nationalities. Apply online or at the embassy.", safety: "Berlin is generally safe, but stay cautious in busy areas.", destination_id: berlin.id)
puts "Info for Berlin created."

info7 = Info.create!(visa: "Visa required for some nationalities. Apply at the Italian embassy.", safety: "Rome is safe, but be cautious of pickpockets in tourist areas.", destination_id: rome.id)
puts "Info for Rome created."

info8 = Info.create!(visa: "Visa required for most nationalities. Apply online or at the embassy.", safety: "Dubai is safe, but avoid isolated areas at night.", destination_id: dubai.id)
puts "Info for Dubai created."

info9 = Info.create!(visa: "Visa-free travel for many nationalities. Check the embassy website.", safety: "Barcelona is generally safe. Be cautious of pickpockets.", destination_id: barcelona.id)
puts "Info for Barcelona created."

info10 = Info.create!(visa: "Visa required for some nationalities. Apply online or at the embassy.", safety: "Amsterdam is safe, but watch your belongings in crowded places.", destination_id: amsterdam.id)
puts "Info for Amsterdam created."

info11 = Info.create!(visa: "Visa required for most nationalities. Apply at the Turkish embassy.", safety: "Istanbul is relatively safe. Be cautious in tourist-heavy areas.", destination_id: istanbul.id)
puts "Info for Istanbul created."

info12 = Info.create!(visa: "Visa required for some nationalities. Apply online or at the Spanish embassy.", safety: "Madrid is generally safe. Be aware of your surroundings in busy places.", destination_id: madrid.id)
puts "Info for Madrid created."

info13 = Info.create!(visa: "Visa-free travel for many nationalities. Check the U.S. immigration website.", safety: "San Francisco is generally safe. Stay cautious in less populated areas.", destination_id: san_francisco.id)
puts "Info for San Francisco created."

info14 = Info.create!(visa: "Visa required for most nationalities. Apply at the Egyptian embassy.", safety: "Cairo is relatively safe, but avoid certain areas at night.", destination_id: cairo.id)
puts "Info for Cairo created."

info15 = Info.create!(visa: "Visa required for many nationalities. Apply online or at the embassy.", safety: "Moscow is generally safe. Be cautious of scams and pickpockets.", destination_id: moscow.id)
puts "Info for Moscow created."

info16 = Info.create!(visa: "Visa required for many nationalities. Apply at the embassy.", safety: "Bangkok is a safe city, but stay alert in crowded areas.", destination_id: bangkok.id)
puts "Info for Bangkok created."

info17 = Info.create!(visa: "Visa required for most nationalities. Apply at the Hong Kong embassy.", safety: "Hong Kong is generally safe. Stay alert in busy districts.", destination_id: hong_kong.id)
puts "Info for Hong Kong created."

info18 = Info.create!(visa: "Visa-free for many nationalities. Check the Singapore immigration website.", safety: "Singapore is very safe. Always be aware of your surroundings in public places.", destination_id: singapore.id)
puts "Info for Singapore created."

info19 = Info.create!(visa: "Visa required for most nationalities. Apply at the Brazilian embassy.", safety: "Rio de Janeiro is generally safe, but avoid favelas and isolated areas.", destination_id: rio_de_janeiro.id)
puts "Info for Rio de Janeiro created."

info20 = Info.create!(visa: "Visa-free travel for many nationalities. Check the South African embassy website.", safety: "Cape Town is relatively safe, but avoid certain areas after dark.", destination_id: cape_town.id)
puts "Info for Cape Town created."

info21 = Info.create!(visa: "Visa required for most nationalities. Apply at the Argentine embassy.", safety: "Buenos Aires is generally safe, but exercise caution in certain neighborhoods.", destination_id: buenos_aires.id)
puts "Info for Buenos Aires created."

info22 = Info.create!(visa: "Visa required for some nationalities. Apply online or at the South Korean embassy.", safety: "Seoul is one of the safest cities in the world. Always be aware of your surroundings.", destination_id: seoul.id)
puts "Info for Seoul created."

info23 = Info.create!(visa: "Visa required for some nationalities. Apply at the Indian embassy.", safety: "Mumbai is generally safe, but be cautious in crowded areas and on public transport.", destination_id: mumbai.id)
puts "Info for Mumbai created."

info24 = Info.create!(visa: "Visa required for most nationalities. Apply at the Mexican embassy.", safety: "Mexico City is relatively safe, but be cautious in certain areas, especially at night.", destination_id: mexico_city.id)
puts "Info for Mexico City created."

puts "Seeding Trips..."
trip1 = Trip.create!(
  budget: 3000,
  start_date: Date.today + 10.days,
  end_date: Date.today + 15.days,
  user_id: user1.id,
  category: 1,
  # package_id: package1.id,
  destination_id: paris.id
)
puts "Trip for Paris created."

trip2 = Trip.create!(
  budget: 2500,
  start_date: Date.today + 5.days,
  end_date: Date.today + 10.days,
  user_id: user2.id,
  category: 2,
  # package_id: package2.id,
  destination_id: new_york.id
)
puts "Trip for New York created."

trip3 = Trip.create!(
  budget: 4000,
  start_date: Date.today + 15.days,
  end_date: Date.today + 20.days,
  user_id: user3.id,
  category: 3,
  # package_id: package3.id,
  destination_id: tokyo.id
)
puts "Trip for Tokyo created."

trip4 = Trip.create!(
  budget: 3500,
  start_date: Date.today + 20.days,
  end_date: Date.today + 25.days,
  user_id: user4.id,
  category: 4,
  # package_id: package4.id,
  destination_id: london.id
)
puts "Trip for London created."

trip5 = Trip.create!(
  budget: 5000,
  start_date: Date.today + 25.days,
  end_date: Date.today + 30.days,
  user_id: user5.id,
  category: 5,
  # package_id: package5.id,
  destination_id: sydney.id
)
puts "Trip for Sydney created."

trip6 = Trip.create!(
  budget: 3000,
  start_date: Date.today + 10.days,
  end_date: Date.today + 15.days,
  user_id: user4.id,
  category: 1,
  # package_id: package6.id,  # Package id starts from 6
  destination_id: berlin.id
)
puts "Trip for Berlin created."

trip7 = Trip.create!(
  budget: 2500,
  start_date: Date.today + 5.days,
  end_date: Date.today + 10.days,
  user_id: user3.id,
  category: 2,
  # package_id: package7.id,  # Package id starts from 7
  destination_id: rome.id
)
puts "Trip for Rome created."

trip8 = Trip.create!(
  budget: 4000,
  start_date: Date.today + 15.days,
  end_date: Date.today + 20.days,
  user_id: user5.id,
  category: 3,
  # package_id: package8.id,  # Package id starts from 8
  destination_id: dubai.id
)
puts "Trip for Dubai created."

trip9 = Trip.create!(
  budget: 3500,
  start_date: Date.today + 20.days,
  end_date: Date.today + 25.days,
  user_id: user5.id,
  category: 4,
  # package_id: package9.id,  # Package id starts from 9
  destination_id: barcelona.id
)
puts "Trip for Barcelona created."

trip10 = Trip.create!(
  budget: 5000,
  start_date: Date.today + 25.days,
  end_date: Date.today + 30.days,
  user_id: user1.id,
  category: 5,
  # package_id: package10.id,  # Package id starts from 10
  destination_id: amsterdam.id
)
puts "Trip for Amsterdam created."

trip11 = Trip.create!(
  budget: 3000,
  start_date: Date.today + 10.days,
  end_date: Date.today + 15.days,
  user_id: user3.id,
  category: 1,
  # package_id: package11.id,  # Package id starts from 11
  destination_id: istanbul.id
)
puts "Trip for Istanbul created."

trip12 = Trip.create!(
  budget: 2500,
  start_date: Date.today + 5.days,
  end_date: Date.today + 10.days,
  user_id: user2.id,
  category: 2,
  # package_id: package12.id,  # Package id starts from 12
  destination_id: madrid.id
)
puts "Trip for Madrid created."

trip13 = Trip.create!(
  budget: 4000,
  start_date: Date.today + 15.days,
  end_date: Date.today + 20.days,
  user_id: user5.id,
  category: 3,
  # package_id: package13.id,  # Package id starts from 13
  destination_id: san_francisco.id
)
puts "Trip for San Francisco created."

trip14 = Trip.create!(
  budget: 3500,
  start_date: Date.today + 20.days,
  end_date: Date.today + 25.days,
  user_id: user4.id,
  category: 4,
  # package_id: package14.id,  # Package id starts from 14
  destination_id: cairo.id
)
puts "Trip for Cairo created."

trip15 = Trip.create!(
  budget: 5000,
  start_date: Date.today + 25.days,
  end_date: Date.today + 30.days,
  user_id: user5.id,
  category: 5,
  # package_id: package15.id,  # Package id starts from 15
  destination_id: moscow.id
)
puts "Trip for Moscow created."

trip16 = Trip.create!(
  budget: 3000,
  start_date: Date.today + 10.days,
  end_date: Date.today + 15.days,
  user_id: user1.id,
  category: 1,
  # package_id: package16.id,  # Package id starts from 16
  destination_id: bangkok.id
)
puts "Trip for Bangkok created."

trip17 = Trip.create!(
  budget: 2500,
  start_date: Date.today + 5.days,
  end_date: Date.today + 10.days,
  user_id: user2.id,
  category: 2,
  # package_id: package17.id,  # Package id starts from 17
  destination_id: hong_kong.id
)
puts "Trip for Hong Kong created."

trip18 = Trip.create!(
  budget: 4000,
  start_date: Date.today + 15.days,
  end_date: Date.today + 20.days,
  user_id: user3.id,
  category: 3,
  # package_id: package18.id,  # Package id starts from 18
  destination_id: singapore.id
)
puts "Trip for Singapore created."

trip19 = Trip.create!(
  budget: 3500,
  start_date: Date.today + 20.days,
  end_date: Date.today + 25.days,
  user_id: user4.id,
  category: 4,
  # package_id: package19.id,  # Package id starts from 19
  destination_id: rio_de_janeiro.id
)
puts "Trip for Rio de Janeiro created."

trip20 = Trip.create!(
  budget: 5000,
  start_date: Date.today + 25.days,
  end_date: Date.today + 30.days,
  user_id: user2.id,
  category: 5,
  # package_id: package20.id,  # Package id starts from 20
  destination_id: cape_town.id
)
puts "Trip for Cape Town created."

trip21 = Trip.create!(
  budget: 3000,
  start_date: Date.today + 10.days,
  end_date: Date.today + 15.days,
  user_id: user1.id,
  category: 1,
  # package_id: package21.id,  # Package id starts from 21
  destination_id: buenos_aires.id
)
puts "Trip for Buenos Aires created."

trip22 = Trip.create!(
  budget: 2500,
  start_date: Date.today + 5.days,
  end_date: Date.today + 10.days,
  user_id: user3.id,
  category: 2,
  # package_id: package22.id,  # Package id starts from 22
  destination_id: seoul.id
)
puts "Trip for Seoul created."

trip23 = Trip.create!(
  budget: 4000,
  start_date: Date.today + 15.days,
  end_date: Date.today + 20.days,
  user_id: user3.id,
  category: 3,
  # package_id: package23.id,  # Package id starts from 23
  destination_id: mumbai.id
)
puts "Trip for Mumbai created."

trip24 = Trip.create!(
  budget: 3500,
  start_date: Date.today + 20.days,
  end_date: Date.today + 25.days,
  user_id: user4.id,
  category: 4,
  # package_id: package24.id,  # Package id starts from 24
  destination_id: mexico_city.id
)
puts "Trip for Mexico City created."



puts "Seeding Packages..."
package1 = Package.create!(name: "Paris Backpacker", flight_id: flight1.id, hotel_id: hotel1.id, trip_id: Trip.all.sample.id)
puts "Package 'Paris Backpacker' created."
package2 = Package.create!(name: "Paris Luxury", flight_id: flight1.id, hotel_id: hotel1.id, trip_id: Trip.all.sample.id)
puts "Package 'Paris Luxury' created."
package3 = Package.create!(name: "Paris Adventure", flight_id: flight1.id, hotel_id: hotel1.id, trip_id: Trip.all.sample.id)
puts "Package 'Paris Adventure' created."
package4 = Package.create!(name: "Paris Culture", flight_id: flight1.id, hotel_id: hotel1.id, trip_id: Trip.all.sample.id)
puts "Package 'Paris Culture' created."

package5 = Package.create!(name: "New York Backpacker", flight_id: flight3.id, hotel_id: hotel2.id, trip_id: Trip.all.sample.id)
puts "Package 'New York Backpacker' created."
package6 = Package.create!(name: "New York Luxury", flight_id: flight3.id, hotel_id: hotel2.id, trip_id: Trip.all.sample.id)
puts "Package 'New York Luxury' created."
package7 = Package.create!(name: "New York Adventure", flight_id: flight3.id, hotel_id: hotel2.id, trip_id: Trip.all.sample.id)
puts "Package 'New York Adventure' created."
package8 = Package.create!(name: "New York Culture", flight_id: flight3.id, hotel_id: hotel2.id, trip_id: Trip.all.sample.id)
puts "Package 'New York Culture' created."

puts "Seeding Packages for Tokyo..."
package9 = Package.create!(name: "Tokyo Backpacker", flight_id: flight2.id, hotel_id: hotel3.id, trip_id: Trip.all.sample.id)
puts "Package 'Tokyo Backpacker' created."
package10 = Package.create!(name: "Tokyo Luxury", flight_id: flight2.id, hotel_id: hotel3.id, trip_id: Trip.all.sample.id)
puts "Package 'Tokyo Luxury' created."
package11 = Package.create!(name: "Tokyo Adventure", flight_id: flight2.id, hotel_id: hotel3.id, trip_id: Trip.all.sample.id)
puts "Package 'Tokyo Adventure' created."
package12 = Package.create!(name: "Tokyo Culture", flight_id: flight2.id, hotel_id: hotel3.id, trip_id: Trip.all.sample.id)
puts "Package 'Tokyo Culture' created."

puts "Seeding Packages for London..."
package13 = Package.create!(name: "London Backpacker", flight_id: flight3.id, hotel_id: hotel4.id, trip_id: Trip.all.sample.id)
puts "Package 'London Backpacker' created."
package14 = Package.create!(name: "London Luxury", flight_id: flight3.id, hotel_id: hotel4.id, trip_id: Trip.all.sample.id)
puts "Package 'London Luxury' created."
package15 = Package.create!(name: "London Adventure", flight_id: flight3.id, hotel_id: hotel4.id, trip_id: Trip.all.sample.id)
puts "Package 'London Adventure' created."
package16 = Package.create!(name: "London Culture", flight_id: flight3.id, hotel_id: hotel4.id, trip_id: Trip.all.sample.id)
puts "Package 'London Culture' created."

puts "Seeding Packages for Sydney..."
package17 = Package.create!(name: "Sydney Backpacker", flight_id: flight4.id, hotel_id: hotel5.id, trip_id: Trip.all.sample.id)
puts "Package 'Sydney Backpacker' created."
package18 = Package.create!(name: "Sydney Luxury", flight_id: flight4.id, hotel_id: hotel5.id, trip_id: Trip.all.sample.id)
puts "Package 'Sydney Luxury' created."
package19 = Package.create!(name: "Sydney Adventure", flight_id: flight4.id, hotel_id: hotel5.id, trip_id: Trip.all.sample.id)
puts "Package 'Sydney Adventure' created."
package20 = Package.create!(name: "Sydney Culture", flight_id: flight4.id, hotel_id: hotel5.id, trip_id: Trip.all.sample.id)
puts "Package 'Sydney Culture' created."
puts "Seeding Packages for Berlin..."
package21 = Package.create!(name: "Berlin Backpacker", flight_id: flight6.id, hotel_id: hotel6.id, trip_id: Trip.all.sample.id)
puts "Package 'Berlin Backpacker' created."
package22 = Package.create!(name: "Berlin Luxury", flight_id: flight6.id, hotel_id: hotel6.id, trip_id: Trip.all.sample.id)
puts "Package 'Berlin Luxury' created."
package23 = Package.create!(name: "Berlin Adventure", flight_id: flight6.id, hotel_id: hotel6.id, trip_id: Trip.all.sample.id)
puts "Package 'Berlin Adventure' created."
package24 = Package.create!(name: "Berlin Culture", flight_id: flight6.id, hotel_id: hotel6.id, trip_id: Trip.all.sample.id)
puts "Package 'Berlin Culture' created."

puts "Seeding Packages for Rome..."
package25 = Package.create!(name: "Rome Backpacker", flight_id: flight7.id, hotel_id: hotel7.id, trip_id: Trip.all.sample.id)
puts "Package 'Rome Backpacker' created."
package26 = Package.create!(name: "Rome Luxury", flight_id: flight7.id, hotel_id: hotel7.id, trip_id: Trip.all.sample.id)
puts "Package 'Rome Luxury' created."
package27 = Package.create!(name: "Rome Adventure", flight_id: flight7.id, hotel_id: hotel7.id, trip_id: Trip.all.sample.id)
puts "Package 'Rome Adventure' created."
package28 = Package.create!(name: "Rome Culture", flight_id: flight7.id, hotel_id: hotel7.id, trip_id: Trip.all.sample.id)
puts "Package 'Rome Culture' created."

puts "Seeding Packages for Dubai..."
package29 = Package.create!(name: "Dubai Backpacker", flight_id: flight8.id, hotel_id: hotel8.id, trip_id: Trip.all.sample.id)
puts "Package 'Dubai Backpacker' created."
package30 = Package.create!(name: "Dubai Luxury", flight_id: flight8.id, hotel_id: hotel8.id, trip_id: Trip.all.sample.id)
puts "Package 'Dubai Luxury' created."
package31 = Package.create!(name: "Dubai Adventure", flight_id: flight8.id, hotel_id: hotel8.id, trip_id: Trip.all.sample.id)
puts "Package 'Dubai Adventure' created."
package32 = Package.create!(name: "Dubai Culture", flight_id: flight8.id, hotel_id: hotel8.id, trip_id: Trip.all.sample.id)
puts "Package 'Dubai Culture' created."

puts "Seeding Packages for Barcelona..."
package33 = Package.create!(name: "Barcelona Backpacker", flight_id: flight9.id, hotel_id: hotel9.id, trip_id: Trip.all.sample.id)
puts "Package 'Barcelona Backpacker' created."
package34 = Package.create!(name: "Barcelona Luxury", flight_id: flight9.id, hotel_id: hotel9.id, trip_id: Trip.all.sample.id)
puts "Package 'Barcelona Luxury' created."
package35 = Package.create!(name: "Barcelona Adventure", flight_id: flight9.id, hotel_id: hotel9.id, trip_id: Trip.all.sample.id)
puts "Package 'Barcelona Adventure' created."
package36 = Package.create!(name: "Barcelona Culture", flight_id: flight9.id, hotel_id: hotel9.id, trip_id: Trip.all.sample.id)
puts "Package 'Barcelona Culture' created."

puts "Seeding Packages for Amsterdam..."
package37 = Package.create!(name: "Amsterdam Backpacker", flight_id: flight10.id, hotel_id: hotel10.id, trip_id: Trip.all.sample.id)
puts "Package 'Amsterdam Backpacker' created."
package38 = Package.create!(name: "Amsterdam Luxury", flight_id: flight10.id, hotel_id: hotel10.id, trip_id: Trip.all.sample.id)
puts "Package 'Amsterdam Luxury' created."
package39 = Package.create!(name: "Amsterdam Adventure", flight_id: flight10.id, hotel_id: hotel10.id, trip_id: Trip.all.sample.id)
puts "Package 'Amsterdam Adventure' created."
package40 = Package.create!(name: "Amsterdam Culture", flight_id: flight10.id, hotel_id: hotel10.id, trip_id: Trip.all.sample.id)
puts "Package 'Amsterdam Culture' created."

puts "Seeding Packages for Istanbul..."
package41 = Package.create!(name: "Istanbul Backpacker", flight_id: flight11.id, hotel_id: hotel11.id, trip_id: Trip.all.sample.id)
puts "Package 'Istanbul Backpacker' created."
package42 = Package.create!(name: "Istanbul Luxury", flight_id: flight11.id, hotel_id: hotel11.id, trip_id: Trip.all.sample.id)
puts "Package 'Istanbul Luxury' created."
package43 = Package.create!(name: "Istanbul Adventure", flight_id: flight11.id, hotel_id: hotel11.id, trip_id: Trip.all.sample.id)
puts "Package 'Istanbul Adventure' created."
package44 = Package.create!(name: "Istanbul Culture", flight_id: flight11.id, hotel_id: hotel11.id, trip_id: Trip.all.sample.id)
puts "Package 'Istanbul Culture' created."

puts "Seeding Packages for Madrid..."
package45 = Package.create!(name: "Madrid Backpacker", flight_id: flight12.id, hotel_id: hotel12.id, trip_id: Trip.all.sample.id)
puts "Package 'Madrid Backpacker' created."
package46 = Package.create!(name: "Madrid Luxury", flight_id: flight12.id, hotel_id: hotel12.id, trip_id: Trip.all.sample.id)
puts "Package 'Madrid Luxury' created."
package47 = Package.create!(name: "Madrid Adventure", flight_id: flight12.id, hotel_id: hotel12.id, trip_id: Trip.all.sample.id)
puts "Package 'Madrid Adventure' created."
package48 = Package.create!(name: "Madrid Culture", flight_id: flight12.id, hotel_id: hotel12.id, trip_id: Trip.all.sample.id)
puts "Package 'Madrid Culture' created."

puts "Seeding Packages for San Francisco..."
package49 = Package.create!(name: "San Francisco Backpacker", flight_id: flight13.id, hotel_id: hotel13.id, trip_id: Trip.all.sample.id)
puts "Package 'San Francisco Backpacker' created."
package50 = Package.create!(name: "San Francisco Luxury", flight_id: flight13.id, hotel_id: hotel13.id, trip_id: Trip.all.sample.id)
puts "Package 'San Francisco Luxury' created."
package51 = Package.create!(name: "San Francisco Adventure", flight_id: flight13.id, hotel_id: hotel13.id, trip_id: Trip.all.sample.id)
puts "Package 'San Francisco Adventure' created."
package52 = Package.create!(name: "San Francisco Culture", flight_id: flight13.id, hotel_id: hotel13.id, trip_id: Trip.all.sample.id)
puts "Package 'San Francisco Culture' created."

# Attaching one photo to each trip
# file = URI.parse("https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1\?q\=80\&w\=2940\&auto\=format\&fit\=crop\&ixlib\=rb-4.0.3\&ixid\=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open #photo1
# trip1.photo.attach(io: file, filename: "trip_1.jpg", content_type: "image/png")
# trip1.save!
# file = URI.parse("http://res.cloudinary.com/dymquyp2y/image/upload/v1741795173/bcshliedvsaswlmisscd.jpg").open #photo2
# trip2.photo.attach(io: file, filename: "trip_2.jpg", content_type: "image/png")
# trip2.save!
# file = URI.parse("http://res.cloudinary.com/dymquyp2y/image/upload/v1741795183/ic9qmu6j8x47brsqpk2x.jpg").open #photo3
# trip3.photo.attach(io: file, filename: "trip_3.jpg", content_type: "image/png")
# trip3.save!
# file = URI.parse("http://res.cloudinary.com/dymquyp2y/image/upload/v1741795195/rmudambo0bk7qi8gsy7d.jpg").open #photo4
# trip4.photo.attach(io: file, filename: "trip_4.jpg", content_type: "image/png")
# trip4.save!
# file = URI.parse("http://res.cloudinary.com/dymquyp2y/image/upload/v1741795204/bqgj69aeuvvnjnql9uty.jpg").open #photo5
# trip5.photo.attach(io: file, filename: "trip_5.jpg", content_type: "image/png")
# trip5.save!

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
# puts "pictures uploaded."

journal1 = Journal.create!(
  content: "Excited to explore the beautiful city of Paris! Can't wait to see the Eiffel Tower and try some delicious French cuisine.",
  trip_id: trip1.id
)
puts "Journal entry for Paris trip created."

journal2 = Journal.create!(
  content: "New York, here I come! Looking forward to experiencing the city that never sleeps, visiting Times Square, and catching a Broadway show.",
  trip_id: trip2.id
)
puts "Journal entry for New York trip created."

journal3 = Journal.create!(
  content: "Tokyo adventure awaits! I'm eager to explore Shibuya, try authentic sushi, and immerse myself in the vibrant culture.",
  trip_id: trip3.id
)
puts "Journal entry for Tokyo trip created."

journal4 = Journal.create!(
  content: "London calling! Excited to visit Buckingham Palace, ride the London Eye, and enjoy a classic English afternoon tea.",
  trip_id: trip4.id
)
puts "Journal entry for London trip created."

journal5 = Journal.create!(
  content: "Sydney, here I come! Looking forward to seeing the Sydney Opera House, relaxing on Bondi Beach, and exploring the city.",
  trip_id: trip5.id
)
puts "Journal entry for Sydney trip created."
# file1 = URI.parse("https://images.unsplash.com/photo-1570241464320-0a3d89eed76d?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# file2 = URI.parse("https://plus.unsplash.com/premium_photo-1663013123196-f83decee810f?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
# package20.photos.attach(io: file1, filename: "pack20.jpg", content_type: "image/png")
# package20.photos.attach(io: file2, filename: "package20.jpg", content_type: "image/jpeg")
# package20.save
