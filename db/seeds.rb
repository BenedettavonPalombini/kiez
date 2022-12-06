require 'faker'
# require "open-uri"

# file = URI.open("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&w=1000&q=80")

# postphoto = URI.open("https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80")

puts "creating users for Heilbronner Str."

klaus = User.create!(email: "test25@example.com",
            password: "123456",
            first_name: "Klaus",
            last_name: "Fischer",
            address: "Heilbronner Str. 11, 10779 Berlin",
            verified: "true",
            # image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Vj-E68Io8R6MQAS419OmRJm-zBYOg4OhSA&usqp=CAU"
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

madeleine = User.create!(email: "test3@test.com",
            password: "123456",
            first_name: "Madeleine",
            last_name: " McDonald",
            address: "Heilbronner Str. 11, 10779 Berlin",
            verified: "true"
)

madeleine.save

tobias = User.create!(email: "test4@test.com",
            password: "123456",
            first_name: "Tobias",
            last_name: "Ganz",
            address: "Heilbronner Str. 11, 10779 Berlin",
            verified: "true"
)

tobias.save

puts "done"

puts "Users from Heilbronner Str. creating building posts."
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
                        address: "Heilbronner Str. 11, 10779 Berlin"
)

new_post.save!

new_post = Post.create!(title: "Taking care of plants",
                        content: "I will be abroad for one month. If anyone is available to water my plants once a week, I would be grateful.",
                        hidden: false,
                        solved: false,
                        user: tobias,
                        kind: "building",
                        address: "Heilbronner Str. 11, 10779 Berlin"
)

new_post.save!

puts "Done."
puts "Users from Heilbronner creating neighborhood posts."

new_post = Post.new(title: "Need help putting together IKEA cabinet",
                    content: "Hello, I just purchased a cabinet from IKEA. I am having difficulty putting it together.
                    I am looking for someone to help me make sense of this manual and build this thing!",
                    category: "Furniture Assembly",
                    hidden: false,
                    solved: false,
                    duration: "1 hour",
                    price: 25,
                    user: klaus,
                    kind: "neighborhood",
                    address: "Heilbronner Str. 11, 10779 Berlin"
                    # image: '/images/chair.jpg'
)

new_post.save!

new_post = Post.new(title: "Looking for a German Language Tutor.",
                    content: "Hi, my name is Madeleine, and I am new to Berlin. I am looking for someone to teach me some day-to-day German language skills.
                    Feel free to reach out if you are interested!",
                    category: "Help Needed",
                    hidden: false,
                    solved: false,
                    duration: "2 hours",
                    price: 20,
                    user: madeleine,
                    kind: "neighborhood",
                    address: "Heilbronner Str. 11, 10779 Berlin"
  # image: '/images/chair.jpg'
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
