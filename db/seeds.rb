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

# User.new!(email: "test@example.com",
#             password: "123456",
#             first_name: "Jane",
#             last_name: "Smith",
#             address: "Goltzstraße 41, 13587 Berlin, Germany",
#             verified: "true"
#           )
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
    new_post = Post.create(title: Faker::FunnyName.three_word_name,
                                      content: Faker::Quotes::Shakespeare.hamlet_quote,
                                      hidden: false,
                                      solved: false,
                                      user: new_user,
                                      kind: "building"
                                    #   user: new_user
                                      )
  end

  3.times do
    new_post = Post.new(title: Faker::FunnyName.three_word_name,
                                    content: Faker::Quotes::Shakespeare.hamlet_quote,
                                    category: ["Advice", "Help offer", "Help search", "Giveaway"].sample,
                                    hidden: false,
                                    solved: false,
                                    user: new_user,
                                    kind: "neighborhood"
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
