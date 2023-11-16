
puts "Cleaning db..."
# TODO

Rental.destroy_all
Pet.destroy_all
User.destroy_all


# users (x4)
puts "Creating users..."
babyyoda = User.create!(email: "givemepizza@gmail.com", password: "OMGWTF", first_name: "Baby Yoda", last_name: "Mando")
file = File.open(Rails.root.join("app/assets/images/users/babyyoda.jpeg"))
babyyoda.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

doug = User.create!(email: "ilovetherams@gmail.com", password: "ih8passwords", first_name: "Doug", last_name: "Berkley")
file = File.open(Rails.root.join("app/assets/images/users/doug.jpeg"))
doug.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

sammie = User.create!(email: "samhatesham@gmail.com", password: "meow35", first_name: "Sammie", last_name: "Shakes")
file = File.open(Rails.root.join("app/assets/images/users/sammie.jpeg"))
sammie.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

yusuke = User.create!(email: "rockyShirokane@gmail.com", password: "paw0122", first_name: "Yusuke", last_name: "Mori")
file = File.open(Rails.root.join("app/assets/images/users/yusuke.jpeg"))
yusuke.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

puts "Creating users..."
yann = User.create!(email: "curlybrackets@gmail.com", password: "javascript", first_name: "Yann", last_name: "Klein")
file = File.open(Rails.root.join("app/assets/images/users/yann.jpeg"))
yann.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

puts "Creating pets..."
# pets (x21)
cassandra = Pet.create!(
  lister: sammie,
  name: "Cassandra",
  gender: "F",
  species: "Cockroach",
  life_stage: "Adult",
  size: "Extra Small",
  description: "Cassandra will make your life as fabulous as hers. Book her for a friend to talk to during lonely nights or just for some fashion inspiration",
  price_per_day: 700,
)
file = File.open(Rails.root.join("app/assets/images/pets/Cassandra.jpeg"))
cassandra.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")


geoffrey = Pet.create!(
  lister: sammie,
  name: "Geoffrey",
  gender: "M",
  species: "Axolotl",
  life_stage: "Adult",
  size: "Small",
  description: "I mean, just look at him, he's awesome.",
  price_per_day: 8000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Geoffrey.jpeg"))
geoffrey.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

metalgearsolid = Pet.create!(
  lister: sammie,
  name: "Metal Gear Solid",
  gender: "M",
  species: "Dog",
  life_stage: "Adult",
  size: "Medium",
  description: "Need someone to protect you during a walk alone? Metal Gear Solid is your guy. He will stay by your side and bark away any predators",
  price_per_day: 7000,
)
file = File.open(Rails.root.join("app/assets/images/pets/MetalGearSolid.jpeg"))
metalgearsolid.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

henry = Pet.create!(
  lister: sammie,
  name: "Henry",
  gender: "M",
  species: "Cat",
  life_stage: "Young",
  size: "Medium",
  description: "Henry is very chatty and will knock your ugly decor off of the walls. He is fierce but it is constructive criticism. He does not scratch or bite.",
  price_per_day: 40000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Henry.jpeg"))
henry.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

bubblegum = Pet.create!(
  lister: sammie,
  name: "Bubblegum",
  gender: "F",
  species: "Horse",
  life_stage: "Adult",
  size: "Large",
  description: "Late for work? Bubblegum can solve your problem and let you arrive in style. She requires colossal-size poop bags fyi. Not responsible if you fall off of Bubblegum. Saddle not included.",
  price_per_day: 10000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Bubblegum.jpeg"))
bubblegum.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

cheddar = Pet.create!(
  lister: sammie,
  name: "Cheddar",
  gender: "M",
  species: "Mouse",
  life_stage: "Young",
  size: "Small",
  description: "Cheddar can hunt down any bugs you have in your house and get rid of them. He might also chew through your electric wiring, but he is currently in anger management classes for that. Should not be a problem.",
  price_per_day: 20000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Cheddar.jpeg"))
cheddar.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

rocky = Pet.create!(
  lister: yusuke,
  name: "Rocky",
  gender: "M",
  species: "Dog",
  life_stage: "Young",
  size: "Small",
  description: "Toy poodle. No allergies. Loves people. He is a bit naughty on the outside, but has a good heart Price: 5000JPY per day",
  price_per_day: 5000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Rocky.jpeg"))
rocky.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

mike = Pet.create!(
  lister: yusuke,
  name: "Mike",
  gender: "M",
  species: "Dog",
  life_stage: "Adult",
  size: "Medium",
  description: "He is a typical bull dog. Always having fun playing with balls.",
  price_per_day: 6000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Mike.jpeg"))
mike.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

hanako = Pet.create!(
  lister: yusuke,
  name: "Hanako",
  gender: "F",
  species: "Rabbit",
  life_stage: "Elder",
  size: "Small",
  description: "Hanako is coming from Kyoto Japan. She is 35 years old but still fine. ",
  price_per_day: 4000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Hanako.jpeg"))
hanako.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

taro = Pet.create!(
  lister: yusuke,
  name: "Taro",
  gender: "M",
  species: "Chameleon",
  life_stage: "Young",
  size: "Small",
  description: "He loves eating xxx. I will share the details after booking.",
  price_per_day: 12000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Taro.jpeg"))
taro.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

miikko = Pet.create!(
  lister: yusuke,
  name: "Miikko",
  gender: "F",
  species: "Sheep",
  life_stage: "Adult",
  size: "Medium",
  description: "She is lovely and will make you happy, absolutely !! She has experience working as a model for years. ",
  price_per_day: 40000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Miikko.jpeg"))
miikko.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

hammie = Pet.create!(
  lister: babyyoda,
  name: "Hammie",
  gender: "F",
  species: "Hamster",
  life_stage: "Young",
  size: "Small",
  description: "A cute Hammie. She loves funions and will attack you for them. WATCH YOUR BACK.  Available for pick-up at 9am and drop-off at 8pm.",
  price_per_day: 8500,
)
file = File.open(Rails.root.join("app/assets/images/pets/Hammie.jpeg"))
hammie.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

meowie = Pet.create!(
  lister: babyyoda,
  name: "Meowie",
  gender: "M",
  species: "Orange Cat",
  life_stage: "Adult",
  size: "Small",
  description: "A grumpy cat that loves lasagna. Available for pick-up at 12pm and drop-off at 8pm.",
  price_per_day: 10000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Meowie.jpeg"))
meowie.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

bigmama = Pet.create!(
  lister: babyyoda,
  name: "Big Mama",
  gender: "F",
  species: "Hippo",
  life_stage: "Adult",
  size: "Extra Large",
  description: "For when you need a buddy in the bath! Big and heavy. Loves watermelon and water. Available for pick-up at 1pm and drop-off at 6pm",
  price_per_day: 50000,
)
file = File.open(Rails.root.join("app/assets/images/pets/BigMama.jpeg"))
bigmama.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

derpie = Pet.create!(
  lister: babyyoda,
  name: "Derpie",
  gender: "F",
  species: "Dog",
  life_stage: "Elder",
  size: "Small",
  description: "A derpy old man. Available for pick-up at 10am and drop-off at 8pm.",
  price_per_day: 9000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Derpie.jpeg"))
derpie.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

greg = Pet.create!(
  lister: babyyoda,
  name: "Greg",
  gender: "F",
  species: "Crocodile",
  life_stage: "Adult",
  size: "Large",
  description: "An angry woman with strict lunch times. Pick-up available at 11am and drop-off at 9pm.",
  price_per_day: 65000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Greg.jpeg"))
greg.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

python = Pet.create!(
  lister: doug,
  name: "Python",
  gender: "M",
  species: "Snake",
  life_stage: "Baby",
  size: "Extra Small",
  description: "I don't like snakes. Take him, please",
  price_per_day: 0,
)
file = File.open(Rails.root.join("app/assets/images/pets/Python.jpeg"))
python.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

sock = Pet.create!(
  lister: doug,
  name: "Sock",
  gender: "F",
  species: "Sea Cucumber",
  life_stage: "Adult",
  size: "Extra Large",
  description: "Sock is a beautiful 5 year old girl with a glowing complexion and a real affinity for salted water",
  price_per_day: 500,
)
file = File.open(Rails.root.join("app/assets/images/pets/Sock.jpeg"))
sock.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

gary = Pet.create!(
  lister: doug,
  name: "Gary",
  gender: "M",
  species: "Snail",
  life_stage: "Youth",
  size: "Small",
  description: "Gary likes natural light, fresh vegetables and warmth. All materials except food are provided in his terranium.",
  price_per_day: 40000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Gary.jpeg"))
gary.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

ruby = Pet.create!(
  lister: yann,
  name: "Ruby",
  gender: "F",
  species: "Beaver",
  life_stage: "Young",
  size: "Medium",
  description: "Ruby is off the rails, but shes a sweetheart. She likes regular baths and naps.",
  price_per_day: 5000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Ruby.jpeg"))
ruby.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

macaroni = Pet.create!(
  lister: yann,
  name: "Macaroni",
  gender: "M",
  species: "Polar bear",
  life_stage: "Young",
  size: "Medium",
  description: "He likes to cuddle as long as you feed him on time...",
  price_per_day: 7000,
)
file = File.open(Rails.root.join("app/assets/images/pets/Macaroni.jpeg"))
macaroni.photo.attach(io: file, filename: "nes.jpeg", content_type: "image/jpeg")

puts "Creating rentals..."
# rentals (x10)
Rental.create!(
  pet: cassandra,
  renter: yusuke,
  start_date: "2023-11-13",
  end_date: "2023-11-14",
  status: "accepted",
  total_price: 100,
)

Rental.create!(
  pet: cheddar,
  renter: yann,
  start_date: "2023-10-31",
  end_date: "2023-11-05",
  status: "accepted",
  total_price: 100000,
)

Rental.create!(
  pet: mike,
  renter: babyyoda,
  start_date: "2023-11-03",
  end_date: "2023-11-09",
  status: "accepted",
  total_price: 12000,
)

Rental.create!(
  pet: taro,
  renter: sammie,
  start_date: "2023-11-30",
  end_date: "2023-12-05",
  status: "waiting",
  total_price: 60000,
)

Rental.create!(
  pet: bigmama,
  renter: yusuke,
  start_date: "2023-12-12",
  end_date: "2023-12-14",
  status: "waiting",
  total_price: 10000,
)

Rental.create!(
  pet: hammie,
  renter: doug,
  start_date: "2023-12-21",
  end_date: "2023-12-28",
  status: "accepted",
  total_price: 59500,
)

Rental.create!(
  pet: ruby,
  renter: yusuke,
  start_date: "2023-12-22",
  end_date: "2023-12-26",
  status: "declined",
  total_price: 20000,
)

Rental.create!(
  pet: macaroni,
  renter: sammie,
  start_date: "2023-11-29",
  end_date: "2023-12-01",
  status: "accepted",
  total_price: 14000,
)

Rental.create!(
  pet: miikko,
  renter: babyyoda,
  start_date: "2023-11-27",
  end_date: "2023-12-14",
  status: "accepted",
  total_price: 680000,
)

Rental.create!(
  pet: metalgearsolid,
  renter: yann,
  start_date: "2023-12-11",
  end_date: "2023-12-14",
  status: "accepted",
  total_price: 21000,
)

puts "Finished!"
