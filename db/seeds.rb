# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Review.destroy_all
Appointment.destroy_all
Pet.destroy_all
Shelter.destroy_all
User.destroy_all

puts "Creating database..."

file = URI.open("https://www.livreshebdo.fr/sites/default/files/styles/convert_webp/public/styles/image_full_new/public/assets/images/marguerite_duras.png.webp?itok=9yw9uG5r")
user1 = User.create!(
  email: "MargueriteDuras@gmail.net",
  password: "123456"
)
user1.photo.attach(io: file, filename: 'user1.jpg', content_type: 'image/jpg')
user1.save!

file = URI.open("https://static.faber.co.uk/wp-content/uploads/2016/04/10283-1-e1463140467973-412x306.jpg")
user2 = User.create!(
  email: "OrhanPamuk@hotmail.gt",
  password: "123456"
)
user2.photo.attach(io: file, filename: 'user2.jpg', content_type: 'image/jpg')
user2.save!

file = URI.open("https://www.babelio.com/users/AVT_Ursula-K-Le-Guin_4588.jpg")
user3 = User.create!(
  email: "UrsulaGuin@gmail.am",
  password: "123456"
)
user3.photo.attach(io: file, filename: 'user3.jpg', content_type: 'image/jpg')
user3.save!

file = URI.open("https://www.literaturhauseuropa.eu/en/authors/fatland-erika-1/image_preview")
user4 = User.create!(
  email: "ErikaFatland@norway.com",
  password: "123456"
)
user4.photo.attach(io: file, filename: 'user4.jpg', content_type: 'image/jpg')
user4.save!

file = URI.open("https://cdn.awpwriter.org/uploads/content/3742/JamesSalter.jpg")
user5 = User.create!(
  email: "JamesSalter@bing.io",
  password: "123456"
)
user5.photo.attach(io: file, filename: 'user5.jpg', content_type: 'image/jpg')
user5.save!

file = URI.open("https://media.newyorker.com/photos/601c7a16bd65b9f35da4cf54/1:1/w_1788,h_1788,c_limit/WritersVoice-JhumpaLahiri.jpg")
user6 = User.create!(
  email: "JhumpaLahiri@outlook.io",
  password: "123456"
)
user6.photo.attach(io: file, filename: 'user6.jpg', content_type: 'image/jpg')
user6.save!

file = URI.open("https://thumb.canalplus.pro/http/unsafe/%7BresolutionXY%7D/smart/creativemedia-image.canalplus.pro/content/0001/07/bfa9e3c02cdc4160c358e3a5935c518c8a108b0d.png")
user7 = User.create!(
  email: "ElenaFerrante@bing.cn",
  password: "123456"
)
user7.photo.attach(io: file, filename: 'user7.jpg', content_type: 'image/jpg')
user7.save!

file = URI.open("https://bookshop.ge/content/uploads/author/author_5f5a1b27af1f5.jpg")
user8 = User.create!(
  email: "TonyJudt@hotmail.io",
  password: "123456"
)
user8.photo.attach(io: file, filename: 'user8.jpg', content_type: 'image/jpg')
user8.save!

puts "Users created"

file = URI.open("https://www.paloaltoonline.com/news/photos/2017/september/28/61449_full.jpg")
shelter1 = Shelter.create!(
  name: "Pet Finder",
  address: "Rue de la Paix 75008 Paris",
  phone_number: "01 23 45 67 89",
  description: "We can support and advise you in choosing the right cat or kitten to adopt from the many we take into foster throughout the year. All our cats are rescues - abandoned, unwanted, or simply homeless - many from the local refuges with which we work, overwhelmed each year by the sheer numbers of cats, and especially kittens, in need of help. We also take into foster many cats which are old, sick, injured or in need of special care and we help re-home those which are left behind when death or infirmity mean their owners are no longer able to care for them.

  The foster to forever home journey means that we really do know these cats and can tell you what they are like and what kind of home would suit them best. When we understand what you are looking for we can use our experience and knowledge to ensure your match is the right one AND support you into the future. We try our very best to make sure you and the cat you choose will have a loving lifelong relationship.

  We have cats for adoption all year round but as kittens are normally born between April and October their availability is seasonal. If we have no kittens currently in foster we are happy to add you to our 'kitten waiting list' and will contact you as soon as we have some little ones ready for their new homes.",
  user: user5
)
shelter1.photo.attach(io: file, filename: 'shelter1.jpg', content_type: 'image/jpg')
shelter1.save!

file = URI.open("https://spcatampabay.org/wp-content/uploads/home_image_banner.jpg")
shelter2 = Shelter.create!(
  name: "Second Life",
  address: "Rue de Lille 75007 Paris",
  phone_number: "07 89 45 67 89",
  description: "Second Life was founded in July 2013 with the aim of offering sanctuary to cats at risk of unnecessary euthanasia & to help cats in need in Paris.

  Since then SL has grown into a network of experienced cat rescuers & veterinary & other professionals. The scope of the charity now encompasses all of Paris and we have volunteers and fosterers in most boroughs, including those areas with large stray & feral populations and where the need for help appears to be greatest.

  SL has a non-euthanasia policy & aims to help feral, stray & unwanted cats have a second chance. We do this by rescuing, vet treating, fostering & socialising cats & kittens, including those that have chronic health conditions & behavioural problems.",
  user: user5
)
shelter2.photo.attach(io: file, filename: 'shelter2.jpg', content_type: 'image/jpg')
shelter2.save!

file = URI.open("https://www.seattleareafelinerescue.org/wp-content/uploads/2019/07/Shawna-199793-_MG_8281-1-436x272.jpg")
shelter3 = Shelter.create!(
  name: "Cat Rescue",
  address: "Bahnhofstraße 90402 Nürnberg",
  phone_number: "06 34 56 78 90",
  description: "We are a small, volunteer run, no-kill cat charity. We rescue cats and kittens, and with your help we treat them and find them loving new forever homes.

  Several cat lovers with many years' rescue experience and a shared vision for London cats formed Cat Rescue to merge resources to help kitties in need, especially those overlooked and in the most need of medical attention and long-term fostering.

  All of us are based in Paris where we do most of our work but we also help in other parts of the Capital and we work alongside with charities inside and near Paris.",
  user: user5
)
shelter3.photo.attach(io: file, filename: 'shelter3.jpg', content_type: 'image/jpg')
shelter3.save!

file = URI.open("https://new.thevbas.org/wp-content/uploads/2020/06/Kittens2-2.jpg")
shelter4 = Shelter.create!(
  name: "Hello Kitties",
  address: "165 Rue de Javel, 75015 Paris",
  phone_number: "03 31 78 90 12",
  description: "Here at North Paris we have lots of lovely cats all patiently awaiting their forever homes. Full information about each and every cat can be found on our Adopt a Cat page, and our expert matchmakers love nothing more than helping the people of Paris find their purrfect companion.

  We recognise that you may want to meet a cat before beginning the adoption process. Appointments are available, and you have the option to either reserve a specific cat or have a general viewing where our team will pick up to 3 cats that we think would be a good match for your home.  We're also still offering our Hands-Free Homing scheme, giving you the flexibility to adopt with confidence from the comfort of your own home.",
  user: user6
)
shelter4.photo.attach(io: file, filename: 'shelter4.jpg', content_type: 'image/jpg')
shelter4.save!

file = URI.open("https://www.hartz.com/wp-content/uploads/2022/01/volunteer-at-animal-shelter-2.jpg")
shelter5 = Shelter.create!(
  name: "Purrfect Match",
  address: "Pl. de la Nation, 75011 Paris",
  phone_number: "06 60 89 12 34",
  description: "At Purrfect Match, we take in every animal who needs us. We give each one lots of love and expert care and get to know their characters and quirks so we can find them a new home that's just right for them.

  All the knowledge we gather in our centres helps us to improve the lives of the animals we'll never meet, through our work with other rescue organisations and charities. We also help people make informed choices when getting a pet, we provide training and welfare advice, and we campaign for changes in the law when we see that dogs and cats or their owners deserve better. We want to be here for every dog and cat, wherever they are, for as long as they need us.",
  user: user6
)
shelter5.photo.attach(io: file, filename: 'shelter5.jpg', content_type: 'image/jpg')
shelter5.save!

file = URI.open("https://www.carescatshelter.com/wp-content/uploads/2023/01/2-1110x431.jpg")
shelter6 = Shelter.create!(
  name: "Cat Cuddles",
  address: "Rue de la Pompe, 75016 Paris",
  phone_number: "05 77 59 67 43",
  description: "Catcuddles is the dream child of a devoted pet lover and was inspired by her special-needs feline, Mr Cuddles, who is our feline mascot. We are a registered charity as of July 2012 and with the exception our veterinary team, are entirely volunteer-run.

  Our cat-centric approach means we put kitties first; their welfare and comfort is paramount to us. We never bring in cats we have no exclusive space for and never keep them with us for longer than necessary before getting them adopted.

  Through our network of fosterers, we aim to offer the best possible home-from-home environment to cats in need of affection, attention, rehabilitation and a new loving home.",
  user: user6
)
shelter6.photo.attach(io: file, filename: 'shelter6.jpg', content_type: 'image/jpg')
shelter6.save!

file = URI.open("https://kittenrescue.org/wp-content/uploads/2015/01/KittenRescue_FB3.jpg")
shelter7 = Shelter.create!(
  name: "The Catty Shack",
  address: "Václavské nám. 22, 110 00 Praha",
  phone_number: "07 71 35 89 12",
  description: "The Catty Shack is Prague's adoption facility for our feline friends. With the main goal that all healthy, adoptable cats have an opportunity to be placed in a forever home, the Catty Shack welcomes visitors to come and meet available cats.

  Located in a cozy house with a storefront concept, The Catty Shack is a temporary home for healthy, well-adjusted and vaccinated cats. The facility offers Londoners a convenient, accessible location to visit, view and take home adoptable cats.",
  user: user7
)
shelter7.photo.attach(io: file, filename: 'shelter7.jpg', content_type: 'image/jpg')
shelter7.save!

file = URI.open("https://heartlandhumane.org/wp-content/uploads/web-cats.png")
shelter8 = Shelter.create!(
  name: "Adopt a Cat Today",
  address: "624 Clarke Road, London, ON, N5V 3K5",
  phone_number: "519-601-2650",
  description: "Adopt a Cat Today was established as a non-profit organization in 1899 and exists to improve the lives of animals in our community by providing temporary shelter and appropriate new families for surrendered animals.

  Throughout the years, we have worked tirelessly to assist animals by providing them with a home until they can be adopted into a new family.  We rely primarily on individual and corporate donations in order to provide care for animals in our community.

  Our mission is to lead London and Middlesex in building a humane and compassionate community for all animals.",
  user: user7
)
shelter8.photo.attach(io: file, filename: 'shelter8.jpg', content_type: 'image/jpg')
shelter8.save!

file = URI.open("https://images.foxtv.com/static.fox5atlanta.com/www.fox5atlanta.com/content/uploads/2023/01/932/524/DSC_8813.00_00_51_49.Still001.jpg?ve=1&tl=1")
shelter9 = Shelter.create!(
  name: "Dog Trust",
  address: "17 Wakley Street, London, EC1V 7RQ",
  phone_number: "020 7253 8888",
  description: "Since 1891, we've been working for a better future for dogs and the people who love them.

  When a dog is in distress, we care for them. When a dog needs a home, we find them a loving family. When an owner needs a helping hand (or paw) - or they just can't cope, we're ready to step in.

  For every dog, for every owner, we're by their side through thick and thin, throughout their lives. The bond they have is special to us. It changes lives, making each day happier and more complete. It's why we believe A dog is for life.®

  Discover who we are, what we do, and how we'll never stop fighting to make tomorrow's world a better place for all dogs.",
  user: user7
)
shelter9.photo.attach(io: file, filename: 'shelter9.jpg', content_type: 'image/jpg')
shelter9.save!

file = URI.open("https://www.gannett-cdn.com/presto/2020/03/26/PWES/b54dc23e-34f6-460e-8931-26ccc2f8677f-sh032620coronapets005.JPG?crop=6213,3495,x0,y389&width=3200&height=1801&format=pjpg&auto=webp")
shelter10 = Shelter.create!(
  name: "All Dogs Matter",
  address: "243 Muswell Hill Broadway, N10 1DE",
  phone_number: "020 8883 2273",
  description: "All Dogs Matter is a dog rescue and rehoming charity working in and around London to transform the lives of unwanted and abandoned dogs. We also rehome dogs in need from overseas.
  In 2022 All Dogs Matter rescued and rehomed 349 dogs with new owners. We also found forever homes for 48 unwanted and abandoned dogs from China, Egypt and Italy.",
  user: user8
)
shelter10.photo.attach(io: file, filename: 'shelter10.jpg', content_type: 'image/jpg')
shelter10.save!

file = URI.open("https://i.ytimg.com/vi/YQDDm9HLkV4/maxresdefault.jpg")
shelter11 = Shelter.create!(
  name: "Weebly",
  address: "31 Rue de Paradis, 75010 Paris",
  phone_number: "09 97 23 45 67",
  description: "Weebly is entirely volunteer run and has many wonderful foster homes that are willing to care for these dogs until adoption. We supply all necessities to these families including food, crates, bedding, toys and treats. In addition we take responsibility for all medical expenses. All of our foster homes are located in the Paris and Strathroy areas.",
  user: user8
)
shelter11.photo.attach(io: file, filename: 'shelter11.jpg', content_type: 'image/jpg')
shelter11.save!

file = URI.open("https://images.adsttc.com/media/images/5afc/4d99/f197/cca6/9000/0087/large_jpg/final_reception.jpg?1526484365")
shelter12 = Shelter.create!(
  name: "Lea Valley Dog Rescue",
  address: "Lea Valley, London, E10 7QX",
  phone_number: "020 8510 2000",
  description: "Yasmina started rescuing dogs in 1984, taking dogs handed in from the public and those surrendered to the dog pounds in the UK and Ireland.

  In 2006 the rescue name of Lea Valley Dog Rescue was born.

  In 2007 we (Yasmina, alongside a very small handful of fosterers)began to work alongside some Romanian rescuers after becoming aware of the inhumane treatment of the dogs on the streets and so called public shelters.

  Lea Valley Dog Rescue firmly believes that love has no borders, a dog in need, no matter where it is, is a dog in need.

  We continue to support dogs from the UK and also work with our Romanian friends to give as many dogs as we can the life they deserve.",
  user: user8
)
shelter12.photo.attach(io: file, filename: 'shelter12.jpg', content_type: 'image/jpg')
shelter12.save!

puts "Shelters created"

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/1221254/0686M00000VcxTnQAJ.jpg")
pet1 = Pet.create!(
  name: "Milo",
  age: 2,
  breed: "Bulldog",
  description: "Milo is a very sweet and loving dog. He is very playful and loves to cuddle. He is very good with children and other dogs. He is house trained and knows basic commands. He is neutered and up to date on all his shots. He is a very good dog and will make a great addition to any family.",
  # type: "dog",
  gender: "male",
  species: "dog",
  shelter: shelter12
)
pet1.photo.attach(io: file, filename: 'milo.jpg', content_type: 'image/jpg')
pet1.save!

file = URI.open("https://images.squarespace-cdn.com/content/v1/56a777c25a5668e7cc61b33f/1677783969221-GJYUSEXFM4GO237VTHND/895f779a-9422-4209-9003-267b1773620d.jpg?format=1500w")
pet2 = Pet.create!(
  name: "Bella",
  age: 3,
  breed: "Tabby",
  description: "Bella is a beautiful 12 year old polite gentleman that likes affection on his own terms. He eats kibble and never wants any human food.

  He's very calm and relaxed, and spends a lot of time inside in the winter cURIed up in one spot. In summer, he tends to spend long hours outside and just comes by for food. He's not massively playful or bothered by toys. He doesn't like dogs or being picked up or put in a spot.

  Bella's owners sadly need to part with him due to changes in living situations.",
  # type: "cat",
  gender: "male",
  species: "cat",
  shelter: shelter1
)
pet2.photo.attach(io: file, filename: 'bella.jpg', content_type: 'image/jpg')
pet2.save!

file = URI.open("https://www.ortsdienst.de/upload/adv/cf017a2f583c9c0bcb950d159a0c96c2.jpg")
pet3 = Pet.create!(
  name: "Aitch",
  age: 1,
  breed: "Labrador",
  description: "Aitch is a 1 year old Labrador who is full of character! Aitch is a bouncy boy who would best suit an adult only home. Aitch would love patient owners who can be around to help him settle into his new home. Aitch needs to be the only pet in the home but could enjoy the company of calm walking friends out and about. Here at the centre Aitch has taken a keen interest in training and would love to show his new family his tricks; wait, sit and chin! He would like to continue learning new things with his owners.",
  gender: "male",
  species: "dog",
  shelter: shelter11
)
pet3.photo.attach(io: file, filename: 'aitch.jpg', content_type: 'image/jpg')
pet3.save!

file = URI.open("https://images.squarespace-cdn.com/content/v1/56a777c25a5668e7cc61b33f/1677783606574-Q7L1I2CKA543GEP7WRX6/20230209_180942.jpg?format=1500w")
pet4 = Pet.create!(
  name: "Purdy",
  age: 3,
  breed: "Scottish fold",
  description: "Purdy is a beautiful 3 year old straight-eared Scottish fold kitty. She loves attention and would do well in a family home with plenty of attention. She is very playful and affection motivated rather than being motivated by food. In fact, she will only eat dry food and doesn't show much interest in wet food.

  She is looking for a loving home with garden access and a big family to give her all of the attention. Purdy was a stray cat rescued by a vet clinic worker. She has been neutered, vaccinated, and is microchipped.",
  species: "cat",
  gender: "female",
  shelter: shelter1
)
pet4.photo.attach(io: file, filename: 'purdy.jpg', content_type: 'image/jpg')
pet4.save!

file = URI.open("https://images.squarespace-cdn.com/content/v1/56a777c25a5668e7cc61b33f/1649317758525-30UFM4KNBYEM88Y76Y0I/ALFIE.jpg?format=1500w")
pet5 = Pet.create!(
  name: "Alfie",
  age: 13,
  breed: "Bengal",
  description: "Hello I'm Alfie a large, loving, handsome (if I may say), and vocal gentleman. I love attention, a warm spot on a sofa or lap, and toys like pingpong balls or a bit of rustley paper.

  I am intelligent, as befits my part Bengal breeding, and have expertly learned how to use the human toilet!

  Although I was always an indoor cat but would relish the opportunity to have a safe balcony or terrace to watch from. I have a wonderful human taking very good care of me but times change and I feel ready for a permanent home now.

  I would greatly benefit from having a relaxing place to call my own, one to one attention and plenty of space to explore and stretch my legs. I am sorry to say, I don’t appreciate children or other pets in my Kingdom!",
  species: "cat",
  gender: "male",
  shelter: shelter2
)
pet5.photo.attach(io: file, filename: 'alfie.jpg', content_type: 'image/jpg')
pet5.save!

file = URI.open("https://images.squarespace-cdn.com/content/v1/56a777c25a5668e7cc61b33f/1676051459856-5EIGIS29BFXYV8O0I6RJ/Feather%2Bprinter.jpg?format=1500w")
pet6 = Pet.create!(
  name: "Feather",
  age: 5,
  breed: "Savannah",
  description: "Feather is a five year old Savannah spayed female. She came into foster care after her owner sadly died and Feather’s brother started to bully her. She had become very thin and begun to overgroom.

  She was previously an indoor cat but now loves to go outside, especially on sunny days, watches the wildlife and pretends to catch the squirrels (When they turn round and shout at her she stops trying!).

  Because of her previous lifestyle she is used to being close to one person and is quite needy and affectionate.",
  species: "cat",
  gender: "female",
  shelter: shelter2
)
pet6.photo.attach(io: file, filename: 'feather.jpg', content_type: 'image/jpg')
pet6.save!

file = URI.open("https://images.squarespace-cdn.com/content/v1/56a777c25a5668e7cc61b33f/1645366074728-W4OFUS8A0GA1AMTIXUGH/20220207_192928.jpg?format=1500w")
pet7 = Pet.create!(
  name: "Poppy",
  age: 7,
  breed: "Calico",
  description: "Beautiful Poppy is looking for a home with an experienced owner who will give her time to settle in her new home. She is friendly towards humans and especially loves the attention of women. As a quite dominant calico she does not like to live with other cats, pets and young children. A safe garden for her to explore and lounge in is a must.

  Poppy is neutered, vaccinated and microchipped. She was born in July 2016.",
  species: "cat",
  gender: "female",
  shelter: shelter3
)
pet7.photo.attach(io: file, filename: 'poppy.jpg', content_type: 'image/jpg')
pet7.save!

file = URI.open("https://images.squarespace-cdn.com/content/v1/56a777c25a5668e7cc61b33f/1675508585438-TJR7G8YLXXVIFPHOKZF8/BEF9A1E5-5D95-4ABB-B722-C953191B584B.jpg?format=1500w")
pet8 = Pet.create!(
  name: "Tommy",
  age: 2,
  breed: "Calico",
  description: "Tommy is a very sweet 2 year old male ginger cat. Great personality, chatty, playful and affectionate.

  Would be best suited to a home with no other pets. He was unexpectedly left with us by his previous owner 10 months ago as the owner was relocating and could not take him abroad. Despite desperate efforts to have him get along with our 15 year old cat, this has not worked out.

  We love him very much and regret to have to give him up.",
  species: "cat",
  gender: "male",
  shelter: shelter3
)
pet8.photo.attach(io: file, filename: 'tommy.jpg', content_type: 'image/jpg')
pet8.save!

file = URI.open("https://images.squarespace-cdn.com/content/v1/56a777c25a5668e7cc61b33f/1664365868060-5D7QA7CZEFR0GM5CMG65/20200407_095605.jpg?format=1000w")
pet9 = Pet.create!(
  name: "Ruby",
  age: 9,
  breed: "Tabby",
  description: "Ruby is a beautiful 9 year old tabby cat, with a white chest and paws. She is a friendly cat who loves a good fuss and being brushed; she's not a lap cat as such and doesn't particularly like to be picked up, but will follow you around the house and make sure she is where you are, to see what you're doing!

  Ruby is a lovely cat with a strong personality; she isn't shy of strangers and is happy to meet new people. Ruby hasn't lived with other cats but does seem to enjoy their company, and is inquisitive when she sees the neighbour's cat.

  She knows a lot of words, including 'foodie' and 'birdie' which both make her come running!",
  species: "cat",
  gender: "female",
  shelter: shelter3
)
pet9.photo.attach(io: file, filename: 'ruby.jpg', content_type: 'image/jpg')
pet9.save!

file = URI.open("https://woodgreen.org.uk/wp-content/uploads/2023/02/093742.jpg")
pet10 = Pet.create!(
  name: "Shambu",
  age: 1,
  breed: "Tabby",
  description: "He is a cat who likes to stay at indoors and is very playful. He doesn't mind going out in the garden during summer for fresh air.

  He would best suit a home which has people who can play with him e.g. children. I think he can suit almost any home whether it's quiet or loud.",
  species: "cat",
  gender: "male",
  shelter: shelter4
)
pet10.photo.attach(io: file, filename: 'shambu.jpg', content_type: 'image/jpg')
pet10.save!

file = URI.open("https://woodgreen.org.uk/wp-content/uploads/2023/02/093742.jpg")
pet11 = Pet.create!(
  name: "Boris",
  age: 7,
  breed: "Domestic Short Hair",
  description: "Boris has been a stray for a number of years we suspect, but for the past year was being fed by some locals - they decided to bring him in so that he can hopefully find a suitable and permanent home. He is a very independent cat but with those he trusts, he can be friendly and will accept some fuss on his body/back. However, he is quite head shy and would rather not have fuss on his head. Boris is looking for a home with patient owners who are understanding of the fact he will spend the majority of his time outside and isn't an overly affectionate cat.",
  species: "cat",
  gender: "male",
  shelter: shelter4
)
pet11.photo.attach(io: file, filename: 'boris.jpg', content_type: 'image/jpg')
pet11.save!

file = URI.open("https://woodgreen.org.uk/wp-content/uploads/2023/02/094577.jpg")
pet12 = Pet.create!(
  name: "Molly",
  age: 9,
  breed: "Domestic Long Hair",
  description: "Beautiful long-haired tabby Molly came in due to her owner's ill health. Molly was said to be an affectionate cat in her previous home. Here she is a little shy so would benefit from owners willing to be patient with her and enable her to gain confidence in her own time.",
  species: "cat",
  gender: "Female",
  shelter: shelter5
)
pet12.photo.attach(io: file, filename: 'molly.jpg', content_type: 'image/jpg')
pet12.save!

file = URI.open("https://woodgreen.org.uk/wp-content/uploads/2023/03/Emmanuel.jpeg")
pet13 = Pet.create!(
  name: "Emma",
  age: 1,
  breed: "Domestic Short Hair",
  description: "Emma came into us as his owner was not able to care for he anymore. Emma is a bit shy until settled, but once she is comfortable, she is very affectionate and playful and enjoys a lap. Emma is sensitive girl who will need a patient and understanding owner who is willing to give her the time and space she needs to feel safe. Once she is settled, she enjoys a gentle chin rub, but it may take her a long time to get to this point.",
  species: "cat",
  gender: "Female",
  shelter: shelter5
)
pet13.photo.attach(io: file, filename: 'Emmanuel.jpg', content_type: 'image/jpg')
pet13.save!

file = URI.open("https://woodgreen.org.uk/wp-content/uploads/2023/02/Gigi.jpeg")
pet14 = Pet.create!(
  name: "Gigi",
  age: 2,
  breed: "Domestic Short Hair",
  description: "Gigi is a very sweet, very chatty girl who can take a moment before she comes out of hiding, but once she does, getting fuss is all she wants. She loves head rubs and cheek rubs in particular.",
  species: "cat",
  gender: "Female",
  shelter: shelter6
)
pet14.photo.attach(io: file, filename: 'gigi.jpg', content_type: 'image/jpg')
pet14.save!

file = URI.open("https://woodgreen.org.uk/wp-content/uploads/2023/02/Kitty.jpeg")
pet15 = Pet.create!(
  name: "Kitty",
  age: 5,
  breed: "Domestic Short Hair",
  description: "Kitty is a very nervous girl who often hides. She will need patient owners who are willing to provide her with a long settling in period and let her come to them when she is ready. Kitty has been known to seek attention with the people she knows and will nuzzle your hands after some time.",
  species: "cat",
  gender: "Female",
  shelter: shelter6
)
pet15.photo.attach(io: file, filename: 'kitty.jpg', content_type: 'image/jpg')
pet15.save!

file = URI.open("https://woodgreen.org.uk/wp-content/uploads/2023/02/Lennie.jpeg")
pet16 = Pet.create!(
  name: "Lennie",
  age: 4,
  breed: "Domestic Short Hair",
  description: "Lennie is loving handsome boy who makes my day every morning. His quirks make him so loveable and he would be perfect for any household. His old owners got him one day when they opened the door. He was left on their doorstep in good condition, and has been nothing but perfect for them. The old owners described him as affectionate, loving, cuddly, playful, and a little needy. When he gets lonely he will come and find his humans for a snuggle but can be independent when he needs to be. Lennie also has a very friendly persona so can live with kids of any age. He really loves to be with people, so the bigger the family the better! He really enjoys being groomed, and fussed! He's just so perfect I don't see why anyone couldn't love him.",
  species: "cat",
  gender: "Male",
  shelter: shelter7
)
pet16.photo.attach(io: file, filename: 'kitty.jpg', content_type: 'image/jpg')
pet16.save!

file = URI.open("https://woodgreen.org.uk/wp-content/uploads/2023/02/Oreo-090496-2.jpg")
pet17 = Pet.create!(
  name: "Oreo",
  age: 4,
  breed: "Tabby",
  description: "Oreo came in as he was not getting on with the other cat in the home, so is looking for a home as the only cat. He can be quite shy, but once he's confident he will come to his person for a fuss. He would like a home where he can come out in his own time, with plenty of safe places to call his own.",
  species: "cat",
  gender: "Male",
  shelter: shelter7
)
pet17.photo.attach(io: file, filename: 'oreo.jpg', content_type: 'image/jpg')
pet17.save!

file = URI.open("https://woodgreen.org.uk/wp-content/uploads/2023/02/Rocky1.jpeg")
pet18 = Pet.create!(
  name: "Rocky",
  age: 2,
  breed: "American Shorthair",
  description: "Rocky came to us from a multicat household, and is currently very nervous with his new surroundings. He needs a bit of time to settle and learn to trust people, however he has already shown that he is a very sweet boy, who once he's gained his confidence, will make a wonderful companion.",
  species: "cat",
  gender: "Male",
  shelter: shelter8
)
pet18.photo.attach(io: file, filename: 'rocky.jpg', content_type: 'image/jpg')
pet18.save!

file = URI.open("https://woodgreen.org.uk/wp-content/uploads/2022/10/Pishi-043029.jpg")
pet19 = Pet.create!(
  name: "Pishi",
  age: 9,
  breed: "American Shorthair",
  description: "Meet Pishi! Pishi is looking for a new home with experienced cat owners who understand his behaviour and will offer him patience and time to settle in. He is very nervous about his new surroundings understandably and can be unpredictable. He has previously been kept indoors and has become frustrated, leading to some negative behaviour. Once settled, Pishi is a lovely cat that likes to sit near you and have a small amount of fuss. He is a playful boy, loving dangly toys and his tunnel.",
  species: "cat",
  gender: "Male",
  shelter: shelter8
)
pet19.photo.attach(io: file, filename: 'pishi.jpg', content_type: 'image/jpg')
pet19.save!

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/1264309/0686M00000aNkkRQAS.jpg")
pet20 = Pet.create!(
  name: "Aggy",
  age: 2,
  breed: "Shih Tzu Cross",
  description: "Aggy currently has kennel cough so is unable to mix with dogs, however she is dog friendly and has previously enjoyed meeting dogs out on walks. She can live with children aged 11 years and over who will give her space and time to settle in. Aggy will need adopters to build up leaving hours initially but these could be built to 4 hours at a time. Aggy does have on-going medical needs and for this reason any home will need to be within 40 minutes of the centre. As her medical is unknown at the minute, we are looing for a family that would be happy to keep Aggy potentially on palliative care.",
  species: "dog",
  gender: "Female",
  shelter: shelter9
)
pet20.photo.attach(io: file, filename: 'aggy.jpg', content_type: 'image/jpg')
pet20.save!

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/3010030/0686M00000aNcklQAC.jpg")
pet21 = Pet.create!(
  name: "Alfie",
  age: 5,
  breed: "Terrier Cross",
  description: "Alfie is looking for a home with his brother Archie and they'd like to be the only dogs in the home. The pair will need an adult only household with owners who are around most of the day. They have been house trained so should pick this up quickly but will need their time away from human pals slowly building up. Alfie can demonstrate a sit but doesn't seem to know any other tricks. He may enjoy keeping his mind active learning some but shouldn't need to much in the way of other training.",
  species: "dog",
  gender: "Male",
  shelter: shelter9
)
pet21.photo.attach(io: file, filename: 'alfie.jpg', content_type: 'image/jpg')
pet21.save!

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/1262994/0686M00000aNlKYQA0.jpg")
pet22 = Pet.create!(
  name: "Alfred",
  age: 3,
  breed: "Crossbreed",
  description: "Alfred is a gorgeous 3 year old Bichon crossbreed. He's a sensitive little guy who would benefit from a nice calm home where he can come out of his shell at his own speed. He takes a little to warm to new people but won't say no to a tasty treat. Alfred needs an adult only home with owners who have previous experience around dogs. He must be the only pet in the home but can have doggy friends out and about so long as they are calm. Alfred would prefer not to live with cats. He enjoys a fuss but this needs to be built up as he can get a little overwhelmed if it's too much or too rough. He will tell you if he wants more though and nudge your hand for more attention or sit in your lap when he is comfortable. He can be left for a few hours at a time but this will need to be built up and is toilet trained.",
  species: "dog",
  gender: "Male",
  shelter: shelter9
)
pet22.photo.attach(io: file, filename: 'alfred.jpg', content_type: 'image/jpg')
pet22.save!

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/1257198/0686M00000QlVb9QAF.jpg")
pet23 = Pet.create!(
  name: "Ares",
  age: 6,
  breed: "Terrier Cross",
  description: "Ares is a great boy who will make a wonderful addition to his furever home! He can be a sensitive sausage and will need his new guardians to go at his pace and give him plenty of time to settle and find his paws. He loves playing with his toys and is very affectionate once he gets to know you! He will need to be the only dog in the home and would prefer access to quiet walking areas as meeting other dogs can be uncomfortable for him. He is looking for a quiet adult only home with minimal visitors so he can have all the attention to himself. Ares has lived in a home before and was housetrained and good to be left alone for a few hours, though he may need a refresher (his favourite treats will help!). He isn't too used to traveling at the moment so this will need building up in his new home to make it a positive experience for him. Because Ares is a worried boy he will need his new owners to visit him a few times before he goes home so he can build a positive relationship up with you and show off al the things he is learning (and have lots of treats of course!). Ares will need access to his own secure garden so he can zoom around and play with his favourite toys!",
  species: "dog",
  gender: "Male",
  shelter: shelter10
)
pet23.photo.attach(io: file, filename: 'ares.jpg', content_type: 'image/jpg')
pet23.save!

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/1264254/0686M00000aMRBuQAO.jpg")
pet24 = Pet.create!(
  name: "Badger",
  age: 1,
  breed: "Collie (Border) Cross",
  description: "Badger is looking for a home with a maximum amount of two adults. He needs to live with a confident dog in the home, he is used to Collies, and is learning to make friends with other breeds. We have no history of him with cats, small furries, or livestock. Badger is a super shy boy seeking a quiet home environment. Experience with Collies, and or nervous dogs would be helpful. Badger is not yet housetrained. He lacks confidence with jumping in the car. He will need a nice secure and safe garden.",
  species: "dog",
  gender: "Male",
  shelter: shelter10
)
pet24.photo.attach(io: file, filename: 'badger.jpg', content_type: 'image/jpg')
pet24.save!

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/1263860/0686M00000aNRr4QAG.jpeg")
pet25 = Pet.create!(
  name: "Annie",
  age: 1,
  breed: "Lurcher Cross",
  description: "Annie is an adorable 1 year old Lurcher. She can live with children 14 years and older. She is looking for a home as the only pet but she is dog sociable and will happily have walking buddies. She will benefit from a private, enclosed garden to run around in. She will need her new owners to be around all the time initially to help her adjust to her new environment and then build up the time that she can be left. Annie enjoys travelling in the car which will help when it comes to going for walks as she will need walking in quieter areas away from busy roads and traffic. Annie is housetrained but she might need a little refresher when she goes into her new home.",
  species: "dog",
  gender: "Female",
  shelter: shelter10
)
pet25.photo.attach(io: file, filename: 'annabelle.jpg', content_type: 'image/jpg')
pet25.save!

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/1264439/0686M00000aNDS2QAO.jpg")
pet26 = Pet.create!(
  name: "Annika",
  age: 1,
  breed: "Collie (Border) Cross",
  description: "Annika is a beautiful 13 week old Collie Crossbreed puppy who is so enthusiastic about life! She is looking for her new start, preferably in an active home that will bring her on lots of walks and adventures. Annika will need someone to be at home for most of the day to begin with, so that all aspects of puppy training can be worked on. Annika could live with another suitable dog and children aged 10+ as she is a bouncy, excitable puppy that loves to play. A home with a good sized enclosed outdoor area will be perfect for Annika to run around and stretch her legs.",
  species: "dog",
  gender: "Female",
  shelter: shelter11
)
pet26.photo.attach(io: file, filename: 'annika.jpg', content_type: 'image/jpg')
pet26.save!

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/1263694/0686M00000aMxhZQAS.jpg")
pet27 = Pet.create!(
  name: "Cali",
  age: 4,
  breed: "Crossbreed",
  description: "Cali is such a sweet and gentle girl who has not had the best start in life. She is looking for a calm home with not too many visitors. and can live with children aged 15 and over. Cali can share her home with another dog pending a successful meet but she can bark at dogs out and about, though is friendly when she meets them. Cali can be worried by new people so will require potential adopters to commit to a couple of visits to build a bond with her before she goes home.",
  species: "dog",
  gender: "Female",
  shelter: shelter11
)
pet27.photo.attach(io: file, filename: 'cali.jpg', content_type: 'image/jpg')
pet27.save!

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/3013964/0686M00000aMxSXQA0.jpg")
pet28 = Pet.create!(
  name: "Daisy",
  age: 6,
  breed: "Bichon Frise Cross",
  description: "Daisy is looking for a home as the only dog but can have doggy pals to walk with. She is unsure of large bouncy dogs but smaller quieter ones are ok. She would benefit from being with someone who is home throughout the day especially whilst she settles in. Daisy has the sweetest personality and with time with make a wonderful addition. She has lived with children and is very sweet with them but we feel she needs a quiet home whilst she settles. A home with calm children aged 12 years plus would be considered.",
  species: "dog",
  gender: "Female",
  shelter: shelter11
)
pet28.photo.attach(io: file, filename: 'daisy.jpg', content_type: 'image/jpg')
pet28.save!

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/1256463/0686M00000XSEOwQAP.jpg")
pet29 = Pet.create!(
  name: "Dora",
  age: 3,
  breed: "Greyhound",
  description: "Dora is looking for a loving home where her humans will be with her for most of the time. Dora loves her walks, but is not up to long hikes, short and sweet is ideal. She could share her home with quiet, calm teenage children. Dora may shy away from loud and boisterous people. She will need a home without cats or small furries. She has history of being okay on her lead near cows, but extra care may be needed around sheep. Dora enjoys spending time with other similar type dogs and would benefit from having suitable canine friends join her on walks, but in the home she likes her bed, treats and toys all to herself. She would love a home with a garden with grass and could cope with a reasonably busy household.",
  species: "dog",
  gender: "Female",
  shelter: shelter12
)
pet29.photo.attach(io: file, filename: 'dora.jpg', content_type: 'image/jpg')
pet29.save!

file = URI.open("https://cdn.pixabay.com/photo/2020/01/13/19/43/lizard-4763351_1280.jpg")
pet30 = Pet.create!(
  name: "Flissie",
  age: 2,
  breed: "Gecko",
  description: "My name is Flissie and I am a friendly Leopard Gecko looking for a 40+ gallon tank. I have two buddies if you'd like a few geckos!",
  species: "Lizard",
  gender: "Female",
  shelter: shelter12
)
pet30.photo.attach(io: file, filename: 'flissie.jpg', content_type: 'image/jpg')
pet30.save!

file = URI.open("https://www.dogstrust.org.uk/images/800x600/dogs/1261568/0686M00000VeDxzQAF.jpg")
pet31 = Pet.create!(
  name: "Jean",
  age: 3,
  breed: "Lurcher Cross",
  description: "Jean is a very sweet girl who has probably never lived in a home before. She finds new things a bit overwhelming so is looking for adopters who can help her gain confidence in the world and find her feet in a home environment. Any children should be older teenagers aged 16+ and she would love to have a garden with a 6ft fence where she can build her confidence safely. Jean hasn't been socialised much with other dogs, so would benefit from positive dog interactions once she has settled in. Jeans wish list for a home would be somewhere quiet with patient and calm adopters, and she would like someone around for the majority of the time initially whilst she is settling in. If you rent your property, please ensure you have written permission from your landlord before applying for a dog.",
  species: "dog",
  gender: "Female",
  shelter: shelter12
)
pet31.photo.attach(io: file, filename: 'jean.jpg', content_type: 'image/jpg')
pet31.save!

file = URI.open("https://www.homestead-acres.com/wp-content/uploads/2021/04/Rooster.jpg")
pet32 = Pet.create!(
  name: "Molly",
  age: 3,
  breed: "Rooster",
  description: "This cute little rooster needs a forever home! He is a very young silkie, just started crowing a couple weeks ago.",
  species: "Chicken",
  gender: "Male",
  shelter: shelter12
)
pet32.photo.attach(io: file, filename: 'molly.jpg', content_type: 'image/jpg')
pet32.save!

file = URI.open("https://cdn.pixabay.com/photo/2014/06/21/08/43/rabbit-373691_1280.jpg")
pet33 = Pet.create!(
  name: "Dolly",
  age: 3,
  breed: "rabbit",
  description: "Meet little Dolly! Dolly needs a friend! This poor baby girl was dumped outside and begs for attention. She wants to be held and comforted. She also loves to play.",
  species: "rabbit",
  gender: "Male",
  shelter: shelter12
)
pet33.photo.attach(io: file, filename: 'dolly.jpg', content_type: 'image/jpg')
pet33.save!

file = URI.open("https://cdn.pixabay.com/photo/2020/04/07/20/36/bunny-5014814_1280.jpg")
pet34 = Pet.create!(
  name: "Barry",
  age: 1,
  breed: "rabbit",
  description: "Barry is a living breathing firecracker, who ADORES exploring his space. He will pay you in binkies, zoomies and extravagant acrobatics for the space he gets. He is the true definition of an entertainer!

  Like his siblings, he appreciates a good and mixed veggie bowl, although toys and floor time are his absolute favorite. He can be a bit skittish around new people, but with enough time to adapt, and of course, you guessed it, space, he will become a perfect companion.

  Barry was recently neutered, so his litter skills are expected to improve even more.",
  species: "rabbit",
  gender: "Male",
  shelter: shelter12
)
pet34.photo.attach(io: file, filename: 'barry.jpg', content_type: 'image/jpg')
pet34.save!

file = URI.open("https://cdn.pixabay.com/photo/2023/03/12/17/35/hare-7847442_1280.jpg")
pet35 = Pet.create!(
  name: "Brinn",
  age: 1,
  breed: "rabbit",
  description: "Despite the horrible conditions she was rescued from, Brinn is a very gentle and sweet girl, who loves cuddles just as much as she loves exploring. She is not shy to ask for affection, and will delicately nudge you when she wants your company. She is a calm and relaxed bunny, with tons of love to give a special someone.

  Brinn loves her food, and is not picky at all. Dandelion greens, cilantro, lettuce, cucumber, you name it, she'll devour it. The only thing that matches her appetite is her love of life.

  Brinn is spayed and has received the 1st dose of the RHDV vaccine.",
  species: "rabbit",
  gender: "Female",
  shelter: shelter12
)
pet35.photo.attach(io: file, filename: 'brinn.jpg', content_type: 'image/jpg')
pet35.save!

puts "pets created"

appointment1 = Appointment.create!(
  date: "2023-4-09",
  time: "10:00",
  status: "pending",
  pet: pet1,
  user: user1
)
appointment1.save!

appointment2 = Appointment.create!(
  date: "2023-4-17",
  time: "11:00",
  status: "pending",
  pet: pet2,
  user: user1
)
appointment2.save!

appointment3 = Appointment.create!(
  date: "2023-5-5",
  time: "12:00",
  status: "pending",
  pet: pet3,
  user: user2
)
appointment3.save!

appointment4 = Appointment.create!(
  date: "2023-5-10",
  time: "13:00",
  status: "pending",
  pet: pet4,
  user: user2
)
appointment4.save!

appointment5 = Appointment.create!(
  date: "2023-5-15",
  time: "14:00",
  status: "pending",
  pet: pet5,
  user: user2
)
appointment5.save!

appointment6 = Appointment.create!(
  date: "2023-5-20",
  time: "15:00",
  status: "pending",
  pet: pet6,
  user: user3
)
appointment6.save!

appointment7 = Appointment.create!(
  date: "2023-5-25",
  time: "16:00",
  status: "pending",
  pet: pet7,
  user: user3
)
appointment7.save!

time_string = "2023-5-30 17:00"
time = Time.zone.parse(time_string)
appointment8 = Appointment.create!(
  date: "2023-5-30",
  time: time.strftime("%H:%M"),
  status: "pending",
  pet: pet8,
  user: user4
)
appointment8.save!

appointment9 = Appointment.create!(
  date: "2023-6-5",
  time: "18:00",
  status: "pending",
  pet: pet9,
  user: user4
)
appointment9.save!

appointment10 = Appointment.create!(
  date: "2023-8-5",
  time: "18:00",
  status: "pending",
  pet: pet9,
  user: user6
)
appointment10.save!

puts "appointments created"

review1 = Review.create!(
  title: "Great experience",
  comment: "I had a great experience with this shelter. They were very helpful and friendly. I would recommend them to anyone looking for a pet.",
  user: user1,
  appointment: appointment1
)
review1.save!

review2 = Review.create!(
  title: "Great experience",
  comment: "I had a great experience with this shelter. They were very helpful and friendly. I would recommend them to anyone looking for a pet.",
  user: user1,
  appointment: appointment2
)
review2.save!

review3 = Review.create!(
  title: "Great experience",
  comment: "I had a great experience with this shelter. They were very helpful and friendly. I would recommend them to anyone looking for a pet.",
  user: user2,
  appointment: appointment3
)
review3.save!

review4 = Review.create!(
  title: "Great experience",
  comment: "I had a great experience with this shelter. They were very helpful and friendly. I would recommend them to anyone looking for a pet.",
  user: user2,
  appointment: appointment4
)
review4.save!

review5 = Review.create!(
  title: "Great experience",
  comment: "I had a great experience with this shelter. They were very helpful and friendly. I would recommend them to anyone looking for a pet.",
  user: user2,
  appointment: appointment5
)
review5.save!

review6 = Review.create!(
  title: "Great experience",
  comment: "I had a great experience with this shelter. They were very helpful and friendly. I would recommend them to anyone looking for a pet.",
  user: user3,
  appointment: appointment6
)
review6.save!

review7 = Review.create!(
  title: "Great experience",
  comment: "I had a great experience with this shelter. They were very helpful and friendly. I would recommend them to anyone looking for a pet.",
  user: user3,
  appointment: appointment7
)
review7.save!

review8 = Review.create!(
  title: "Great experience",
  comment: "I had a great experience with this shelter. They were very helpful and friendly. I would recommend them to anyone looking for a pet.",
  user: user4,
  appointment: appointment8
)
review8.save!

review9 = Review.create!(
  title: "Great experience",
  comment: "I had a great experience with this shelter. They were very helpful and friendly. I would recommend them to anyone looking for a pet.",
  user: user4,
  appointment: appointment9
)
review9.save!

puts "reviews created"

favorite1 = Favorite.create!(
  user: user6,
  pet: pet10
)
favorite1.save!

favorite2 = Favorite.create!(
  user: user6,
  pet: pet11
)
favorite2.save!

favorite3 = Favorite.create!(
  user: user2,
  pet: pet12
)
favorite3.save!


puts "favorites created"
