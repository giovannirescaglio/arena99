# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Booking.destroy_all
Article.destroy_all
Sport.destroy_all
State.destroy_all
User.destroy_all

############## SPORTS seeds

sports_array = ["Paragliding", "Archery", "Badminton", "Baseball", "Table tennis", "Tennis", "Volleyball", "Basketball", "Netball", "Cricket", "Cheerleading", "Gymnastics", "Skateboarding", "Snowboarding", "Surfing", "Wakesurfing", "Kitesurfing", "Wakeboarding", "Paddleboarding", "Climbing", "Abseiling", "Canyoning", "Hiking", "Cycling", "Boxing", "Karate", "Taekwondo", "Fencing", "Judo", "Snooker", "Equitation", "Fishing", "Football", "Rugby", "Handball", "Golf", "Curling", "Ice Hockey", "Ice Dancing", "Biathlon", "Tennis", "Running", "Sailing", "Skiing", "Bobsleigh", "Polo", "Squash", "Canoeing", "Kayaking", "Rafting", "Rowing", "Water Polo", "Swimming", "Diving", "Crossfit", "Yoga", "Bodybuilding", "Kart racing", "Rally raid", "Road racing", "Motocross", "Petanque", "Quidditch"].sort

sports_array.each do |sport|
  Sport.create(name: sport)
end

############## STATES seeds

states_array = ["new", "very good", "good", "decent"]

states_array.each do |state|
  State.create(description: state)
end

############## USER seeds

lolo = User.create(email: "laumartin4@gmail.com", password: "123456", first_name: "Lolo")
giogio = User.create(email: "giogio@gmail.com", password: "123456", first_name: "Giogio")
tony = User.create(email: "tony@gmail.com", password: "123456", first_name: "Tony")
test1 = User.create(email: "test1@gmail.com", password: "123456", first_name: "Ramses")
test2 = User.create(email: "test2@gmail.com", password: "123456", first_name: "Basile")
test3 = User.create(email: "test3@gmail.com", password: "123456", first_name: "Floriane")
test4 = User.create(email: "test4@gmail.com", password: "123456", first_name: "Ayoub")
test5 = User.create(email: "test5@gmail.com", password: "123456", first_name: "Emna")
test5 = User.create(email: "test5@gmail.com", password: "123456", first_name: "Yasmine")

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
  address: "41 rue Jobin, 13003 Marseille",
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
  address: "19 rue des Augustins , 33000 Bordeaux",
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
  address: "13 rue des polyanthas , rosny sous bois 93110",
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
  address: "4 Rue de Rivoli, Paris",
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
  address: "10 Boulevard Saint-Germain, Paris",
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
  address: "1 rue du 4 septembre , paris 75002",
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
  address: "3 rue oberkampf , paris 75011",
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
  address: " 20 rue des dames , paris 75017",
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
  address: " 10 Rue Victor Hugo, Bagnolet",
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
  address: " 20 Route de la Reposée, Fontainebleau",
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
  address: " 20 Route de la Reposée, Fontainebleau",
  user: User.first,
  },
  {name: "Football Cage" ,
  description: "Awesome cage for a great time with friends",
  start_date: Date.today,
  end_date: Date.new(2020, 10, 23),
  picture: "http://ecx.images-amazon.com/images/I/51x6Xu2NLVL.jpg",
  price: 50,
  sport: Sport.find_by_name("Football"),
  state: states.sample,
  address: " 16 villa gaudelet paris",
  user: User.second,
  }
]

params_array.each do |params|
  Article.create(params)
end


############ KAYAK seeds

kayaks_array = [
 {name: "Sea Kayak" ,
  description: "Sea Kayak, one sit, securise for novice" ,
  start_date: Date.new(2018, 2, 22),
  end_date: Date.new(2019, 10, 10),
  picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu4gVbxiUbqmmKJYeSwumwaWP-hLMEJcPH_DSkf6o7mrsAyetU" ,
  price: 32,
  sport: Sport.find_by_name("Kayaking"),
  state: states.sample,
  address: "31 rue Bayard, 29900 Concarneau",
  user: User.first,
  },
  {name: "Sea Kayak" ,
  description: "Sea Kayak, two confortable sits, perfect to discover the sea environment" ,
  start_date: Date.new(2018, 4, 20),
  end_date: Date.new(2021, 11, 8),
  picture: "https://www.canoe-shop.com/media/catalog/product/cache/19/image/9df78eab33525d08d6e5fb8d27136e95/k/a/kayak-biwok-evo-dag.jpg" ,
  price: 45,
  sport: Sport.find_by_name("Kayaking"),
  state: states.sample,
  address: "26 avenue de la Pointe du Cap Coz, 29940 Fouesnant",
  user: User.first,
  },
  {name: "Inflatable Kayak" ,
  description: "Kayak for novice, with paddles and safety jacket" ,
  start_date: Date.new(2018, 3, 18),
  end_date: Date.new(2020, 12, 15),
  picture: "https://cdn.shopify.com/s/files/1/0007/6968/7610/products/Ottawa_Kit_1.jpg?v=1522050517" ,
  price: 22,
  sport: Sport.find_by_name("Kayaking"),
  state: states.sample,
  address: "12 rue Beaurivage, 56260 Larmor-Plage",
  user: User.first,
  },
  {name: "Kayak" ,
  description: "Kayak, two sits, paddles and safety jackets" ,
  start_date: Date.today,
  end_date: Date.new(2019, 8, 22),
  picture: "https://images-na.ssl-images-amazon.com/images/I/61zHgOgaZ9L._SY355_.jpg?tag=iphoneafr-20" ,
  price: 34,
  sport: Sport.find_by_name("Kayaking"),
  state: states.sample,
  address: "17 avenue du Dr Fleming, 13500 Martigues",
  user: User.first,
  },
  {name: "Sea Kayak" ,
  description: "Sea Kayak, one sit, paddles, safety jackets and waterproof compartment" ,
  start_date: Date.today,
  end_date: Date.new(2022, 4, 2),
  picture: "http://www.swindonwatersports.co.uk/ekmps/shops/cameronsports1/images/perception-expression-11-touring-and-sea-kayak-[4]-3100-p.jpg" ,
  price: 30,
  sport: Sport.find_by_name("Kayaking"),
  state: states.sample,
  address: "21 rue Mires, 13002 Marseille",
  user: User.first,
  },
  {name: "Inflatable Kayak" ,
  description: "Sea Kayak, two sits, paddles, safety jackets. Perfect for exploring the coast" ,
  start_date: Date.today,
  end_date: Date.new(2021, 5, 21),
  picture: "https://i5.walmartimages.ca/images/Large/327/206/999999-69203886327206.jpg?odnBound=460" ,
  price: 25,
  sport: Sport.find_by_name("Kayaking"),
  state: states.sample,
  address: "16 rue Pascal, 13007 Marseille",
  user: User.first,
  },
  {name: "Canoe Kayak" ,
  description: "Two sits, paddles, safety jackets and waterproof compartment. Perfect for novice or experimented person" ,
  start_date: Date.today,
  end_date: Date.new(2020, 2, 27),
  picture: "https://www.loisirs3000.fr/media/catalog/product/cache/2/image/5e06319eda06f020e43594a9c230972d/k/a/kayak-dag-freeland-hi-luxe.jpg" ,
  price: 28,
  sport: Sport.find_by_name("Kayaking"),
  state: states.sample,
  address: "31 rue de Suez, 13007 Marseille",
  user: User.first,
  },
  {name: "Canoe Kayak" ,
  description: "Two sits, paddles, safety jackets and waterproof compartment. Perfect for novice who want to have good trip" ,
  start_date: Date.today,
  end_date: Date.new(2025, 5, 31),
  picture: "http://www.canoekayakdespontsdece.fr/s/cc_images/teaserbox_14776079.JPG?t=1503502410" ,
  price: 19,
  sport: Sport.find_by_name("Kayaking"),
  state: states.sample,
  address: "11 rue Emile Rouviere, 13016 Marseille",
  user: User.first,
  },
  {name: "Kayak" ,
  description: "Two sits, ultra secure, waterproof compartment. Confirmed" ,
  start_date: Date.today,
  end_date: Date.new(2019, 6, 13),
  picture: "http://www.kayak-attitude.fr/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/o/a/oasistwin_rainbow_8.gif" ,
  price: 55,
  sport: Sport.find_by_name("Kayaking"),
  state: states.sample,
  address: "408 rue de Kersunez, 29760 Penmarch",
  user: User.first,
  },
  {name: "Sea Kayak" ,
  description: "Two confortable sits. Perfect for kids or novice" ,
  start_date: Date.today,
  end_date: Date.new(2019, 6, 13),
  picture: "https://images-na.ssl-images-amazon.com/images/I/71xuHbydkVL._SL1500_.jpg?tag=iphoneafr-20" ,
  price: 24,
  sport: Sport.find_by_name("Kayaking"),
  state: states.sample,
  address: "33 rue Francois Guivarch, 29470 Plougastel-Daoulas",
  user: User.first,
  }
]

  kayaks_array.each do |kayaks|
    Article.create(kayaks)
  end


############ SURF seeds

surf_array = [
 {name: "Amazing good as new surfboard" ,
  description: "Tim Patterson Surfboards PB001-US020868: 6. Short Board Hand Shaped In France" ,
  start_date: Date.new(2018, 05, 01),
  end_date: Date.new(2019, 05, 01),
  picture: "https://img.grouponcdn.com/iam/fpGyga7LvTyrEjY851DL/sw-2048x1242/v1/c700x420.jpg" ,
  price: 20,
  sport: Sport.find_by_name("Surfing"),
  state: states.sample,
  address: "1 Avenue Edouard VII, 64200 Biarritz",
  user: User.first,
  },
  {name: "Great beginner surfboard" ,
  description: "Al Merrick Shapes Design Surfboard 6'1-6'2" ,
  start_date: Date.new(2018, 05, 01),
  end_date: Date.new(2019, 05, 01),
  picture: "https://dl16txa2az7pk.cloudfront.net/media/catalog/product/cache/1/thumbnail/745x419/9df78eab33525d08d6e5fb8d27136e95/8/7/87_745x419.jpg" ,
  price: 17,
  sport: Sport.find_by_name("Surfing"),
  state: states.sample,
  address: "Av. de Zurriola, 1, 20002 San Sebastián, Guipúzcoa, Spain",
  user: User.first,
  },
  {name: "Brand new intermediate surfboard" ,
  description: "Soft Top Surfboard Beach Surfing Ocean White Surf Board with Fins" ,
  start_date: Date.new(2018, 05, 01),
  end_date: Date.new(2019, 05, 01),
  picture: "https://www.olaian.fr/sites/olaian/files/thumbnail_materiel_de_surf_olaian.jpg",
  price: 18,
  sport: Sport.find_by_name("Surfing"),
  state: states.sample,
  address: "Calle Joaquín Costa, 28, 39005 Santander, Cantabria, Spain",
  user: User.first,
  },
  {name: "Awesome intermediate surfboard" ,
  description: "Soft Top Amazing Board" ,
  start_date: Date.new(2018, 05, 01),
  end_date: Date.new(2019, 05, 01),
  picture: "http://surfnation.typepad.com/.a/6a00e553c82f3b883301b8d29b4b31970c-pi" ,
  price: 10,
  sport: Sport.find_by_name("Surfing"),
  state: states.sample,
  address: "Bohemia, 1, 33207 Gijón, Asturias, Spain",
  user: User.first,
  },
  {name: "Best surfboard in Portugal" ,
  description: "Hard Top Pro Surfboard" ,
  start_date: Date.new(2018, 05, 01),
  end_date: Date.new(2019, 05, 01),
  picture: "https://s-media-cache-ak0.pinimg.com/originals/25/e7/8a/25e78a53d5a0f4ee5c175282d90c3901.jpg" ,
  price: 15,
  sport: Sport.find_by_name("Surfing"),
  state: states.sample,
  address: "38.907106, -9.385306",
  user: User.first,
  },
   {name: "Hard top 6 foot surfboard" ,
  description: "New board amazing to ride on, customized" ,
  start_date: Date.new(2018, 05, 01),
  end_date: Date.new(2019, 05, 01),
  picture: "http://www.surfingsilvercoast.com/surfschool/Images/gallery/p&b/9.jpg" ,
  price: 18,
  sport: Sport.find_by_name("Surfing"),
  state: states.sample,
  address: "39.934709, -8.945457",
  user: User.first,
  },
    {name: "Hard top 5.8 pro surfboard" ,
  description: "For great surfers you will have amazing time" ,
  start_date: Date.new(2018, 05, 01),
  end_date: Date.new(2019, 05, 01),
  picture: "https://b9i191t9swmfpa7o1fi3farz-wpengine.netdna-ssl.com/wp-content/uploads/2016/01/surf-camp-lagide-slide-show-4.jpg" ,
  price: 12,
  sport: Sport.find_by_name("Surfing"),
  state: State.find_by_description("new"),
  address: "Baleal 2227, 2520-001 Ferrel, Portugal",
  user: User.first,
  },
   {name: "Soft top 6.5 beginner surfboard" ,
  description: "For great surfers you will have amazing time" ,
  start_date: Date.new(2018, 05, 01),
  end_date: Date.new(2019, 05, 01),
  picture: "http://koholasurf.com/en/wp-content/uploads/2017/08/rip-curl-pro-peniche-2017.jpg" ,
  price: 20,
  sport: Sport.find_by_name("Surfing"),
  state: states.sample,
  address: "41.373044, -8.757257",
  user: User.first,
  },
  {name: "Hard top 6.5 advanced surfboard" ,
  description: "For great surfers you will have amazing time" ,
  start_date: Date.new(2018, 05, 01),
  end_date: Date.new(2019, 05, 01),
  picture: "http://www.mango-surf.com/lib/image/photo/ricardo-christie-rip-pro-portugal-supertubos-peniche-7156-1.jpg" ,
  price: 25,
  sport: Sport.find_by_name("Surfing"),
  state: states.sample,
  address: "Marginal de Alcobaça, São Martinho do Porto, Portugal",
  user: User.first,
  }
]

surf_array.each do |surf|
  Article.create(surf)
end




############ BOOKING seeds
booking_array = [
{
  start_date: Date.new(2018, 01, 01),
  end_date: Date.new(2019, 02, 02),
  article_id: 10,
  user_id: 3
},
{
  start_date: Date.new(2018, 02, 02),
  end_date: Date.new(2019, 03, 03),
  article_id: 10,
  user_id: 5
},
{
  start_date: Date.new(2018, 03, 03),
  end_date: Date.new(2019, 04, 04),
  article_id: 10,
  user_id: 4
},
 ]


booking_array.each do |booking|
  Booking.create(booking)
end
