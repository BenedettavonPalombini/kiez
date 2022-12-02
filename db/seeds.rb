require 'faker'
# require "open-uri"

# file = URI.open("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&w=1000&q=80")

# postphoto = URI.open("https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80")

Bookmark.destroy_all
puts "destroyed bookmarks"
Post.destroy_all
puts "destroyed posts"
User.destroy_all
puts "destroyed users"

User.create!(email: "test@example.com",
            password: "123456",
            first_name: "Jane",
            last_name: "Smith",
            address: "Goltzstraße 41, 13587 Berlin, Germany",
            verified: "true"
          )
#             user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

users = []
5.times do
  new_user = User.new(email: Faker::Internet.email,
                          password: "password",
                          first_name: Faker::Name.first_name,
                          last_name: Faker::Name.last_name,
                          address: ["Goltzstraße 41, 13587 Berlin, Germany", "Linienstraße 49, 10119 Berlin, Germany", "Böhmische Str. 25, 12055 Berlin, Germany"].sample,
                          verified: "true"
                          # photo: '/images/user.jpg'
                        )

    new_user.save
    users << new_user
   puts "#{new_user.id} users was created"
end

puts "end of user creation"
posts = []
users.each do |new_user|

  3.times do
    new_post = Post.create(title: ["help me find Snickers", "Moving Help", "getting rid of a small plant", "can I borrow a ladder?", "URGENT: need childcare 3/12", "Has anyone seen my Amazon package?",
      "Please stop playing trumpet after 10!?", "Building Holiday Party 17/12", "giving away christmas cookies", "housesitter for Speckles next week", "Lost Fish"].sample,
                                      content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true),
                                      hidden: false,
                                      solved: false,
                                      user: new_user,
                                      kind: "building",
                                      address: ["Goltzstraße 41, 13587 Berlin, Germany", "Linienstraße 49, 10119 Berlin, Germany", "Böhmische Str. 25, 12055 Berlin, Germany"].sample,
                                    #   user: new_user
                                      )
  end

  3.times do
    new_post = Post.new(title: ["repair of faulty dishwasher", "Ikea Chair Assembly", "Help me put up my Christmas Tree", "Help me find Sparky", "Let's get together and make cookies!", "Couch"].sample,
                                    content: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true),
                                    category: ["Advice", "Help offer", "Help search", "Giveaway"].sample,
                                    hidden: false,
                                    solved: false,
                                    duration: ["","", "", "", "", "10m", "30m", "1hr", "2hr", "3hr", "all day"].sample,
                                    price: ["free", "free", "free", "free", "10", "20", "30", "40", "50"].sample,
                                    user: new_user,
                                    kind: "neighborhood",
                                    address: ["Goltzstraße 41, 13587 Berlin, Germany", "Linienstraße 49, 10119 Berlin, Germany", "Böhmische Str. 25, 12055 Berlin, Germany"].sample,
                                    # image: '/images/chair.jpg'
                                  )

new_post.save

    posts << new_post
    puts "#{new_post.id} was sucessfully created!"
    end
end

posts.each do |new_post|
      new_bookmark = Bookmark.create(post: new_post, user: users.first )

      puts "#{new_bookmark.id} was created"

    #   3.times do
    #    new_chatroom = Chatroom.create!

    #    puts "#{new_chatroom.id} was created"
    #      3.times do
    #      new_message = Message.create!(content: Faker::Quotes::Shakespeare.hamlet_quote)

    #      puts "#{new_message.id} was created"
    #     end
    #   end
end
