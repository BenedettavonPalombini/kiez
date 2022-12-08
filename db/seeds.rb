require 'faker'
# require "open-uri"

# file = URI.open("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&w=1000&q=80")

# postphoto = URI.open("https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80")

puts "creating users for Heilbronner Str. 23."

tom = User.create!(email: "test26@example.com",
            password: "123456",
            first_name: "Tom",
            last_name: "Glauber",
            address: "Heilbronner Str. 23, 10779 Berlin",
            verified: "true",
          )

tom.save
#             user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")


emma = User.create!(email: "test27@test.com",
            password: "123456",
            first_name: "Emma",
            last_name: "Müller",
            address: "Heilbronner Str. 23, 10779 Berlin",
            verified: "true"
)

emma.save

johnny = User.create!(email: "test28@test.com",
            password: "123456",
            first_name: "Johnny",
            last_name: "Doe",
            address: "Heilbronner Str. 23, 10779 Berlin",
            verified: "true"
)

johnny.save

lukas = User.create!(email: "test29@test.com",
            password: "123456",
            first_name: "Lukas",
            last_name: "Schmidt",
            address: "Heilbronner Str. 23, 10779 Berlin",
            verified: "true"
)

lukas.save

puts "done"

puts "Users from Heilbronner Str. 23 creating building posts."

new_post = Post.create!(title: "Throwing a Christmas Party",
                        content: "Throwing a Christmas party this Friday. Message me if you want to come!",
                        hidden: false,
                        solved: false,
                        user: lukas,
                        kind: "building",
                        address: "Heilbronner Str. 23, 10779 Berlin"
)

new_post.save

new_post = Post.create!(title: "Notice High Rent",
                        content: "Did anyone else get a letter about a rent increase?",
                        hidden: false,
                        solved: false,
                        user: johnny,
                        kind: "building",
                        address: "Heilbronner Str. 23, 10779 Berlin"
)


new_post.save

new_post = Post.create!(title: "Water Heater Out ",
                        content: "My water heater is out! Am I the only one?",
                        hidden: false,
                        solved: false,
                        user: emma,
                        kind: "building",
                        address: "Heilbronner Str. 23, 10779 Berlin"
)

new_post.save

new_post = Post.create!(title: "Does anyone have a spare bike lock?",
                        content: "I misplaced my bike :(. If anyone has a spare, would they mind lending it to me until
                        I buy a new one?",
                        hidden: false,
                        solved: false,
                        user: tom,
                        kind: "building",
                        address: "Heilbronner Str. 23, 10779 Berlin"
)

new_post.save

puts "done"


puts "creating users for Landshuter Str. 17."

benedetta = User.create!(email: "test30@test.com",
                  password: "123456",
                  first_name: "Benedetta",
                  last_name: "von Palombini",
                  address: "Landshuter Str. 17, 10779 Berlin",
                  verified: "true"
)
benedetta.save!


madeleine = User.create!(email: "test3@test.com",
                  password: "123456",
                  first_name: "Madeleine",
                  last_name: " McDonald",
                  address: "Landshuter Str. 17, 10779 Berlin",
                  verified: "true"
)

madeleine.save

mitja = User.create!(email: "test31@test.com",
                    password: "123456",
                    first_name: "Mitja",
                    last_name: "M",
                    address: "Landshuter Str. 17, 10779 Berlin",
                    verified: "true"
)

mitja.save!

edward = User.create!(email: "test32@test.com",
                      password: "123456",
                      first_name: "Edward",
                      last_name: "Leslie",
                      address: "Landshuter Str. 17, 10779 Berlin",
                      verified: "true"
)

edward.save!

karl = User.create!(email: "test33@test.com",
                    password: "123456",
                    first_name: "Karl",
                    last_name: "Polanyi",
                    address: "Landshuter Str. 17, 10779 Berlin",
                    verified: "true"
)

karl.save!

puts "done"

puts "creating users for Heilbronner Str. 11"

klaus = User.create!(email: "test25@example.com",
            password: "123456",
            first_name: "Klaus",
            last_name: "Fischer",
            address: "Heilbronner Str. 11, 10779 Berlin",
            verified: "true",
          )

klaus.save
#             user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

hanna = User.create!(email: "test2@test.com",
            password: "123456",
            first_name: "Hanna",
            last_name: "Fassbinder",
            address: "Heilbronner Str. 11, 10779 Berlin",
            verified: "true"
)

hanna.save


tobias = User.create!(email: "test4@test.com",
            password: "123456",
            first_name: "Tobias",
            last_name: "Ganz",
            address: "Heilbronner Str. 11, 10779 Berlin",
            verified: "true"
)

tobias.save

puts "done"

puts "Users from Heilbronner Str. 11 creating building posts."
new_post = Post.create!(title: "Missing Package",
                        content: "Hello, I was expecting a package to be delivered earlier this week. Please message me
                        if the mailman dropped it off with you.",
                        hidden: false,
                        solved: false,
                        user: hanna,
                        kind: "building",
                        address: "Heilbronner Str. 11, 10779 Berlin"
)

new_post.save!

new_post = Post.create!(title: "Cat Missing",
                        content: "Hey neighbors, I am missing my cat, Whiskers. He is white with grey spots. Last seen three days ago. Let me know if you have seen him! Thanks.",
                        hidden: false,
                        solved: false,
                        user: klaus,
                        kind: "building",
                        address: "Heilbronner Str. 11, 10779 Berlin"
)

new_post.save!

new_post = Post.create!(title: "Does anyone want fruit?",
                        content: "I am going away for a week, and I have a bowl of fruit that will go bad. Does anyone want it?",
                        hidden: false,
                        solved: false,
                        user: madeleine,
                        kind: "building",
                        address: madeleine.address
)

new_post.save!

new_post = Post.create!(title: "Taking care of plants",
                        content: "I will be abroad for one month. If anyone is available to water my plants once a week,
                        I would be grateful.",
                        hidden: false,
                        solved: false,
                        user: tobias,
                        kind: "building",
                        address: "Heilbronner Str. 11, 10779 Berlin"
)

new_post.save!

puts "Done."


puts "Users from Landshuter Str. 17 creating building posts."

new_post = Post.create!(title: "Construction",
                        content: "Did anyone else see the notice that there will be
                        construction next month?",
                        hidden: false,
                        solved: false,
                        user: benedetta,
                        kind: "building",
                        address: "Landshuter Str. 17, 10779 Berlin"
)

new_post.save!

new_post = Post.create!(title: "Quiet Please!",
                        content: "Can whoever is playing trumpet all the time please stop at 10pm??",
                        hidden: false,
                        solved: false,
                        user: christa,
                        kind: "building",
                        address: christa.address
)
new_post.save!

new_post = Post.create!(title: "I need a Hammer",
                        content: "Putting together a crib for my newphew, and I have a limited tool selection.
                        Can I borrow a hammer from somebody?",
                        hidden: false,
                        solved: false,
                        user: edward,
                        kind: "building",
                        address: "Landshuter Str. 17, 10779 Berlin"
)

new_post.save!

new_post = Post.create!(title: "Can I Borrow Someone's Pressure Cooker?",
                        content: "I want to cook a recipe that would be easier to make with a
                        pressure cooker. Do any of you have one that I could borrow for a few days? Would be
                        greatly appreciated.",
                        hidden: false,
                        solved: false,
                        user: mitja,
                        kind: "building",
                        address: "Landshuter Str. 17, 10779 Berlin"
)

new_post.save!

new_post = Post.create!(title: "Giving Away Couch",
                        content: "Hey, I'm getting a new couch delivered, and I need to git rid of my old one.
                        I don't want to throw it out. Does anyone want it?",
                        hidden: false,
                        solved: false,
                        user: karl,
                        kind: "building",
                        address: "Landshuter Str. 17, 10779 Berlin"
)

new_post.save!

puts "done"

puts "creating users for Münchener Str. 42, 10779 Berlin."

alfred = User.create!(email: "test34@test.com",
                      password: "123456",
                      first_name: "Alfred",
                      last_name: "Döblin",
                      address: "Landshuter Str. 17, 10779 Berlin",
                      verified: "true"
)

alfred.save!

christa = User.create!(email: "test35@test.com",
                      password: "123456",
                      first_name: "Christa",
                      last_name: "Wolf",
                      address: "Landshuter Str. 17, 10779 Berlin",
                      verified: "true"
)

christa.save!

karlheinz = User.create!(email: "test36@test.com",
                        password: "123456",
                        first_name: "Karlheinz",
                        last_name: "Böhm",
                        address: "Landshuter Str. 17, 10779 Berlin",
                        verified: "true"
)

karlheinz.save!

adrian = User.create!(email: "test37@test.com",
                      password: "123456",
                      first_name: "Adrian",
                      last_name: "Hoven",
                      address: "Landshuter Str. 17, 10779 Berlin",
                      verified: "true"
)

adrian.save!

puts "done"


puts "Users from Münchener Str creating building posts."

new_post = Post.create!(title: "Can you keep the noise down?",
                        content: "Please stop making all of that noise when people are trying to sleep!",
                        hidden: false,
                        solved: false,
                        user: karlheinz,
                        kind: "building",
                        address: "Landshuter Str. 17, 10779 Berlin"
)

new_post.save!

new_post = Post.create!(title: "Giving Away Books",
                        content: "I am moving, and trying to get rid of a few things.
                        Does anyone want to take a box or two of books?",
                        hidden: false,
                        solved: false,
                        user: christa,
                        kind: "building",
                        address: "Landshuter Str. 17, 10779 Berlin"
                      )

new_post.save!

new_post = Post.create!(title: "Pet Sitting",
                        content: "I will be away for two weeks. Would someone mind checking-in
                        on my dog a few times a day while I am gone?",
                        hidden: false,
                        solved: false,
                        user: alfred,
                        kind: "building",
                        address: "Landshuter Str. 17, 10779 Berlin"
)

new_post.save!

new_post = Post.create!(title: "Made Cake",
                        content: "I made a chocolate cake. Please stop by apartment 3 OG and
                        get yourself some!",
                        hidden: false,
                        solved: false,
                        user: adrian,
                        kind: "building",
                        address: "Landshuter Str. 17, 10779 Berlin"
)

new_post.save!

puts "done"

puts "All users creating neighborhood posts."

new_post = Post.new(title: "Need a Babysitter?",
                    content: "Experienced babysitter with a flexible schedule. If you want
                    a night to yourself, send me a message.",
                    category: "Childcare",
                    hidden: false,
                    solved: false,
                    price: 15,
                    user: alfred,
                    kind: "neighborhood",
                    address: alfred.address
                    # image: '/images/chair.jpg'
)

new_post.save!

new_post = Post.new(title: "Best Vietnamese Restaurant Nearby?",
                    content: "I just moved into the neighborhood. Does anyone have
                    a favorite Vietnamese place they would recommend?",
                    category: "Recommendation",
                    hidden: false,
                    solved: false,
                    user: christa,
                    kind: "neighborhood",
                    address: christa.address
                    # image: '/images/chair.jpg'
)

new_post.save!

new_post = Post.new(title: "Need help putting together IKEA cabinet",
                    content: "Hello, I just purchased a cabinet from IKEA. I am having difficulty putting it together alone,
                    and I'm looking for someone to help me make sense of this manual and build this thing!",
                    category: "Furniture Assembly",
                    hidden: false,
                    solved: false,
                    duration: "1 hour",
                    price: 25,
                    user: klaus,
                    kind: "neighborhood",
                    address: klaus.address
                    # image: '/images/chair.jpg'
)

new_post.save!

new_post = Post.new(title: "Translator Needed",
                    content: "I am looking for a certified English to German
                    translator to translate my official documents.",
                    category: "Translation",
                    hidden: false,
                    solved: false,
                    duration: "3 hours",
                    price: 30,
                    user: johnny,
                    kind: "neighborhood",
                    address: johnny.address
                    # image: '/images/chair.jpg'
)

new_post.save!

new_post = Post.new(title: "My Fridge is Broken",
                    content: "My fridge is broken, and I can't wait too long for a handyman.
                    Is anyone experienced in this kind of thing? I'm willing to pay.",
                    category: "Appliance Repair",
                    hidden: false,
                    solved: false,
                    duration: "1 hour",
                    price: 35,
                    user: emma,
                    kind: "neighborhood",
                    address: emma.address
                    # image: '/images/chair.jpg'
)

new_post.save!

new_post = Post.new(title: "Looking for a German Language Tutor.",
                    content: "Hi, my name is Hanna, and I am new to Berlin. I am looking for someone to teach me some day-to-day German language skills.
                    Please reach out if you are interested!",
                    category: "Help Needed",
                    hidden: false,
                    solved: false,
                    duration: "2 hours",
                    price: 20,
                    user: hanna,
                    kind: "neighborhood",
                    address: hanna.address
  # image: '/images/chair.jpg'
)

new_post.save!

new_post = Post.new(title: "Community Garden",
                    content: "I would like to start a community garden nearby. Is anyone interested?",
                    category: "Info",
                    hidden: false,
                    solved: false,
                    user: karl,
                    kind: "neighborhood",
                    address: karl.address
                  )

new_post.save!

new_post = Post.new(title: "Lost Airpods",
                    content: "Has anyone seen a black pair of airpods? They might have fallen
                    out of my pocket on my way back home from work.",
                    category: "Lost Item",
                    hidden: false,
                    solved: false,
                    user: edward,
                    kind: "neighborhood",
                    address: edward.address
)

new_post.save!

new_post = Post.new(title: "Lost Orange Cat",
                    content: "I haven't seen Snickers since last week, and I'm SO worried for her... PLEASE reach out if you see her",
                    category: "Lost Item",
                    hidden: false,
                    solved: false,
                    user: karlheinz,
                    kind: "neighborhood",
                    address: edward.address
)


new_post.save!
puts "Done"

# posts = []
# users.each do |new_user|

#   3.times do
#     new_post = Post.create(title: ["help me find Snickers", "Moving Help", "getting rid of a small plant", "can I borrow a ladder?", "URGENT: need childcare 3/12", "Has anyone seen my Amazon package?",
#       "Please stop playing trumpet after 10!?", "Building Holiday Party 17/12", "giving away christmas cookies", "housesitter for Speckles next week", "Lost Fish"].sample,
#                                       content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true),
#                                       hidden: false,
#                                       solved: false,
#                                       user: new_user,
#                                       kind: "building",
#                                       address: ["Goltzstraße 41, 13587 Berlin, Germany", "Linienstraße 49, 10119 Berlin, Germany", "Böhmische Str. 25, 12055 Berlin, Germany"].sample,
#                                     #   user: new_user
#                                       )
#   end

#   3.times do
#     new_post = Post.new(title: ["repair of faulty dishwasher", "Ikea Chair Assembly", "Help me put up my Christmas Tree", "Help me find Sparky", "Let's get together and make cookies!", "Couch"].sample,
#                                     content: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true),
#                                     category: ["Advice", "Help offer", "Help search", "Giveaway"].sample,
#                                     hidden: false,
#                                     solved: false,
#                                     duration: ["","", "", "", "", "10m", "30m", "1hr", "2hr", "3hr", "all day"].sample,
#                                     price: ["free", "free", "free", "free", "10", "20", "30", "40", "50"].sample,
#                                     user: new_user,
#                                     kind: "neighborhood",
#                                     address: ["Goltzstraße 41, 13587 Berlin, Germany", "Linienstraße 49, 10119 Berlin, Germany", "Böhmische Str. 25, 12055 Berlin, Germany"].sample,
#                                     # image: '/images/chair.jpg'
#                                   )

# new_post.save

#     posts << new_post
#     puts "#{new_post.id} was sucessfully created!"
#     end
# end

# posts.each do |new_post|
#       new_bookmark = Bookmark.create(post: new_post, user: users.first )

#       puts "#{new_bookmark.id} was created"

#     #   3.times do
#     #    new_chatroom = Chatroom.create!

#     #    puts "#{new_chatroom.id} was created"
#     #      3.times do
#     #      new_message = Message.create!(content: Faker::Quotes::Shakespeare.hamlet_quote)

#     #      puts "#{new_message.id} was created"
#     #     end
#     #   end
# end
