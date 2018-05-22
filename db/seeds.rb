# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
Sport.destroy_all
State.destroy_all
User.destroy_all

############## SPORTS seeds

sports_array = ["Paragliding", "Archery", "Badminton", "Baseball", "Table tennis", "Tennis", "Volleyball", "Basketball", "Netball", "Cricket", "Cheerleading", "Gymnastics", "Skateboarding", "Snowboarding", "Surfing", "Wakesurfing", "Kitesurfing", "Wakeboarding", "Paddleboarding", "Climbing", "Abseiling", "Canyoning", "Hiking", "Cycling", "Boxing", "Karate", "Taekwondo", "Fencing", "Judo", "Snooker", "Equitation", "Fishing", "Football", "Rugby", "Handball", "Golf", "Curling", "Ice Hockey", "Ice Dancing", "Biathlon", "Tennis", "Running", "Sailing", "Skiing", "Bobsleigh", "Polo", "Squash", "Canoeing", "Kayaking", "Rafting", "Rowing", "Water Polo", "Swimming", "Diving", "Crossfit", "Yoga", "Bodybuilding", "Kart racing", "Rally raid", "Road racing", "Motocross", "Petanque", "Quidditch"]

sports_array.each do |sport|
  Sport.create(name: sport)
end

############## STATES seeds

states_array = ["new", "very good", "good", "decent"]

states_array.each do |state|
  State.create(description: state)
end

############## USER seeds

test_user = User.create(email: "laumartin4@gmail.com", password: "123456")

############## ARTICLES seeds

states = State.all

params_array = [
 {name: "Tennis Racket" ,
  description: "The Wilson Ultra 100 has several new technologies to help take its performance to the next level. High Performance Carbon Fiber provides added stiffness for explosive power and the Cushion Foam handle technology softens impacts for optimal dampening and shock absorption." ,
  start_date: Date.new(2018, 5, 25),
  end_date: Date.new(2019, 5, 25),
  picture: "https://img.tennis-warehouse.com/reviews/U100-1.jpg" ,
  price: 10,
  sport: Sport.find_by_name("Tennis"),
  state: states.sample,
  user: User.first,
  },
  {name: "2-seater Canoe" ,
  description: "Spend more time exploring the waterways in the Sevylor Ogden 2-Person Canoe Combo. It comes with a hand pump, 2 paddles, carry bag and pressure gauge - everything you need to hit the water.",
  start_date: Date.new(2018, 6, 18),
  end_date: Date.new(2018, 12, 18),
  picture: "https://images-na.ssl-images-amazon.com/images/I/81DTvea%2BD%2BL._SX355_.jpg",
  price: 25,
  sport: Sport.find_by_name("Canoeing"),
  state: states.sample,
  user: User.first,
  },
  {name: "Archery full gear" ,
  description: "If you don’t have a bow, but want to come and shoot with friends, that’s not a problem. We have several bows available for rent, including recurve bows, Genesis bows and compound bows. Bow set up and basic instruction included with all rentals.",
  start_date: Date.new(2018, 5, 18),
  end_date: Date.new(2020, 5, 18),
  picture: "https://d1tvuvzliscqkm.cloudfront.net/sites/12/2016/06/03074721/equipment-rental-featured.jpg",
  price: 35,
  sport: Sport.find_by_name("Archery"),
  state: states.sample,
  user: User.first,
  },
  {name: "Kitesurf pack",
  description: "Leading edge inflatable kites, known also as inflatables, LEI kites or C-kites, are typically made from ripstop polyester with an inflatable plastic bladder that spans the front edge of the kite with separate smaller bladders that are perpendicular to the main bladder to form the chord or foil of the kite.",
  start_date: Date.new(2018, 5, 18),
  end_date: Date.new(2018, 10, 18),
  picture: "http://2.bp.blogspot.com/-Tyt5Xe0OnnU/UPyp6YBxtbI/AAAAAAAAAHQ/bHU8RbdUcGQ/s1600/Kite+Surf+Equipment.jpg",
  price: 90,
  sport: Sport.find_by_name("Kitesurfing"),
  state: states.sample,
  user: User.first,
  },
  {name: "Neymar PSG jersey" ,
  description: "Official jersey of Neymar in Paris-Saint-Germain, away yellow jersey with Neymar's name and #10 number",
  start_date: Date.new(2018, 9, 10),
  end_date: Date.new(2019, 6, 10),
  picture: "https://img.bfmtv.com/c/1256/708/ef6/e0d430987c08d9c15afbda85b96be.jpeg",
  price: 10,
  sport: Sport.find_by_name("Football"),
  state: states.sample,
  user: User.first,
  },
  {name: "Goalkeeper gloves" ,
  description: "How do you select the right goalkeeper gloves? Gloves are an essential part of being a goalkeeper. They help keep the ball in the safest place on the field: in our hands. There are many factors to consider when making a decision about what keeper gloves you want to wear.",
  start_date: Date.new(2018, 5, 10),
  end_date: Date.new(2018, 12, 10),
  picture: "http://www.soccer-training-info.com/images/keeper_gloves.jpg",
  price: 7,
  sport: Sport.find_by_name("Football"),
  state: states.sample,
  user: User.first,
  },
  {name: "Boxing pack" ,
  description: "Super light, durable, an improved design, and made of our virtually indestructible Super Rich Microfiber, the Rival's RPM3 with its Air Cushion System is the perfect tool for working with boxings heavy hitters." ,
  start_date: Date.new(2018, 5, 10),
  end_date: Date.new(2018, 12, 10),
  picture: "https://cdn.shopify.com/s/files/1/0472/4489/collections/COLLECTION_New_cover_large.jpg?v=1503604047",
  price: 13,
  sport: Sport.find_by_name("Boxing"),
  state: states.sample,
  user: User.first,
  },
  {name: "Abseiling equipment" ,
  description: "ou don’t need any prior experience to have a go at rock climbing, and as mentioned, it doesn’t even matter if you don’t have much of a head for heights. It helps to have a basic level of physical strength and fitness, and a little bit of determination also goes a long way on the rock.",
  start_date: Date.new(2018, 5, 10),
  end_date: Date.new(2018, 12, 10),
  picture: "https://cdn.coolofthewild.com/wp-content/uploads/2017/01/Rock-climbing-gear.jpg",
  price: 45,
  sport: Sport.find_by_name("Abseiling"),
  state: states.sample,
  user: User.first,
  },
  {name: "Amazing Paddleboard" ,
  description: "Find out how it feels to walk on water! Learn the basics of a fast growing fun water sport with SUP Paddle Board Classes Jupiter FL. We can show you the basics and have you out on your own in no time. This is a perfect place to learn with smooth water, great equipment and supportive teachers.",
  start_date: Date.new(2018, 5, 10),
  end_date: Date.new(2019, 12, 10),
  picture: "https://i.pinimg.com/originals/61/39/61/6139614a226076711df059d8466b17cf.jpg",
  price: 14,
  sport: Sport.find_by_name("Paddleboarding"),
  state: states.sample,
  user: User.first,
  },
  {name: "Ping Pong gear" ,
  description: "he Killerspin 110-11 Jet800 7-Ply Table Tennis Racket with Flared Handle offers a tournament quality construction designed to offer the best combination of speed and spin. This racket is made with a 5-ply wood paddle with 2 layers of carbon, making it lightweight and durable. Quality rubbers, a flared handle, and wooden side tape make this racket an excellent choice for competitive players.",
  start_date: Date.new(2018, 6, 23),
  end_date: Date.new(2019, 10, 23),
  picture: "https://pbs.twimg.com/profile_images/1362194980/ping-pong-paddle.jpg",
  price: 7,
  sport: Sport.find_by_name("Table tennis"),
  state: states.sample,
  user: User.first,
  },
  {name: "Quidditch full pack" ,
  description: "Quidditch is, of course, the game of choice for the characters of J.K Rowling's beloved Harry Potter series.",
  start_date: Date.today,
  end_date: Date.new(2019, 10, 23),
  picture: "http://www.83degreesmedia.com/galleries/Features/Issue_65/Quiditch/brooms.jpg",
  price: 30,
  sport: Sport.find_by_name("Quidditch"),
  state: states.sample,
  user: User.first,
  },
  {name: "Find your surfing board" ,
  description: "Modern surfboards are made of polyurethane or polystyrene foam covered with layers of fiberglass, cloth and polyester or epoxy resin. The result is a light and strong surfboard that is buoyant and maneuverable.",
  start_date: Date.today,
  end_date: Date.new(2018, 10, 23),
  picture: "http://www.konaboys.com/wp-content/uploads/2011/07/kona-surf-boards-for-sale.png",
  price: 19,
  sport: Sport.find_by_name("Surfing"),
  state: states.sample,
  user: User.first,
  },
  {name: "Tennis ball machine" ,
  description: "Looking for some extra practice for that forehand or backhand stroke? Rent the ball machine at the front desk.",
  start_date: Date.today,
  end_date: Date.new(2020, 10, 23),
  picture: "https://static1.squarespace.com/static/52d5c68de4b07924afaff92c/t/530d599fe4b0f561e850c512/1393383840206/ballmachine.jpg",
  price: 18,
  sport: Sport.find_by_name("Tennis"),
  state: states.sample,
  user: User.first,
  }
]

params_array.each do |params|
  Article.create(params)
end

