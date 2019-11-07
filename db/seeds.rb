# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts("Start seeding!")
3.times do
  Category.create(title: Faker::Name.name)
end

4.times do
  Residence.create(title: Faker::Name.name, description: Faker::Lorem.paragraph(sentence_count: Faker::Number.between(from: 5, to: 10)),
                   available: Faker::Boolean.boolean,
                   unit: Faker::Number.number(digits: 4),
                   rent: Faker::Number.number(digits: 5),
                   category: Category.find(Faker::Number.between(from: 1, to: 3)))
end

3.times do
  Service.create(title: Faker::Name.name)
end

4.times do
  Amenity.create(title: Faker::Name.name,
                 description: Faker::Lorem.paragraph(sentence_count: Faker::Number.between(from: 6, to: 9)),
                 service: Service.find(Faker::Number.between(from: 1, to: 3)))
end


# category = Category.create(title: 'Studio and Alcove Studio')
# Residence.create(title: 'Studio and Alcove Studio',
#                  description: ' ',
#                  availability: false, unit: nil, rent: nil,
#                  category: category.first)
#
# category = Category.create(title: 'One Bedroom')
# Residence.create(title: 'One bedroom',
#                  description: 'Price shown above reflects net effective rent.',
#                  availability: true, unit: 1826, rent: 3536,
#                  category: category.second)
# Residence.create(title: 'One bedroom',
#                  description: 'Price shown above reflects net effective rent.',
#                  availability: true, unit: 957, rent: 3536,
#                  category: category.second)
# Residence.create(title: 'One bedroom',
#                  description: 'Price shown above reflects net effective rent.',
#                  availability: true, unit: 1817, rent: 3536,
#                  category: category.second)
# Residence.create(title: 'One Bedroom',
#                  description: 'Price shown above reflects net effective rent.',
#                  availability: true, unit: 1921, rent: 3536,
#                  category: category.second)
# Residence.create(title: 'One Bedroom',
#                  description: 'Price shown above reflects net effective rent.',
#                  availability: true, unit: 1508, rent: 3536,
#                  category: category.second)
#
# category = Category.create(title: 'Two bedrooms')
# Residence.create(title: 'Two Bedrooms',
#                  description: ' ',
#                  availability: false, unit: nil, rent: nil,
#                  category: category.third)
# category = Category.create(title: 'One Bedroom Home Office')
# Residence.create(title: 'One Bedroom Home Office',
#                  description: 'nil',
#                  availability: false, unit: nil, rent: nil,
#                  category: category.fourth)
#
# service = Service.create(title: 'Health and Fitness')
# Amenity.create(title: 'Full Service Health Club',
#                description: 'The Mercedes Club is truly full-service and
# includes the following amenities: Access to elite personal trainers,
# well-tended locker rooms, state-of-the-art equipment including
# cardio, free weights, steam rooms, and more.',
#                service: service.first)
# Amenity.create(title: 'Spin Studio',
#                description: "Some of the city's top instructors teach
# our spin courses. Our dedicated studio space is home
# to several energizing and sweat-inducing courses.",
#                service: service.first)
# Amenity.create(title: 'Indoor Basketball Court',
#                description: "Fine tune your long-range 3 point shooting
# or cool down after a workout with a quick game at our indoor basketball court.",
#                service: service.first)
# Amenity.create(title: 'Boxing and Martial Arts',
#                description: 'High intensity boxing classes are held in the
# same space as our acrobatic and meditative martial arts courses.',
#                service: service.first)
# Amenity.create(title: 'Aquatics Center',
#                description: 'Our 25 meter swimming pool is heated to a
# temperature that optimizes performance and comfort.Situated under skylights.',
#                service: service.first)
# Amenity.create(title: 'Yoga Studio',
#                description: "Whether you see strength or Vinyasa-style flow
# from yoga, our range of classes run from yoga fundamentals
# to advanced workouts for all levels.",
#                service: service.first)
# service = Service.create(title: 'Social')
# Amenity.create(title: 'Playa Bowls Cafe',
#                description: 'Grab a glass of wine, bottle of beer,
# or a bite to eat with friends or fellow residents in our cozy bar',
#                service: service.second)
# Amenity.create(title: 'Cafe Seating',
#                description: 'Fresh fruit and vegetable juices with vegan snack
# options to grab on your way out of the gym or in the morning on the go',
#                service: service.second)
# Amenity.create(title: 'Rentable Space With Chefs Kitchen',
#                description: "Want to host an event but don't want to have
# it in your personal space? You can rent space in our lounge area",
#                service: service.second)
# Amenity.create(title: 'Open Air Movie Screenings',
#                description: 'Movies are shown regularly during the spring
# and summer in on our outdoor screening area.', service: service.second)
# service = Service.create(title: 'Recreation')
# Amenity.create(title: 'Table Tennis And Billiards',
#                description: 'Billiards and Table Tennis are favorite activities
# in our resident lounge.',
#                service: service.third)
# Amenity.create(title: 'Aquatics Center',
#                description: 'Our 25 meter swimming pool is heated to a
# temperature that optimizes performance and comfort.', service: service.third)
# service = Service.create(title: 'Relaxation')
# Amenity.create(title: 'On site Massage Therapists',
#                description: 'Massage is known for its healing benefits
# so we prioritize making massage therapists available', service: service.third)
# Amenity.create(title: 'Steam Rooms and Sauna',
#                description: "Whether you're looking for a detox or some time
# to relax fatigued muscles after a workout, our sauna and eucalyptus-infused
# steam room are available",
#                service: service.third)
# service = Service.create(title: 'Convenience')
# Amenity.create(title: 'In Building Gourmet with Apartment Delivery',
#                description: 'Our adjacent specialty market carries a variety of
# prepared foods, gourmet groceries, and everyday convenience items.',
#                service: service.fourth)
# Amenity.create(title: 'Bike Parking',
#                description: 'Safely house your bike in our secure bike parking
# space—if you use it for your daily commute, access is easy and quick.',
#                service: service.fourth)
# Amenity.create(title: 'Package Services including Cold Storage',
#                description: "Receive your packages when you're away,
# we'll keep them safe until you're ready to pick them up.",
#                service: service.fourth)
puts("Seeding end!")






 