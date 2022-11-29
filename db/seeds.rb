
require 'faker'

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
users = []
5.times do
  new_user = User.create(email: Faker::Internet.email,
                          password: "password",
                          first_name: Faker::Name.first_name,
                          last_name: Faker::Name.last_name,
                          address: "Goltzstraße 41, 13587 Berlin, Germany",
                          verified: "true"
                    )
    users << new_user
   puts "#{new_user.id} users was created"
end

puts "end of user creation"
posts = []
users.each do |new_user|
  8.times do
    new_post = Post.create(title: Faker::FunnyName.three_word_name,
                                      content: Faker::Quotes::Shakespeare.hamlet_quote,
                                      category: ["Advice", "Help offer", "Help search", "Giveaway"].sample,
                                      hidden: false,
                                      solved: false,
                                      user: new_user
                                      kind: ["building", "neighborhood"].sample
                                    #   user: new_user
                                      )
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
