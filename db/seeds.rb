
require 'faker'

Post.destroy_all
puts "destroyed posts"
User.destroy_all
puts "destroyed users"
Post.destroy_all
puts "destroyed posts"
Bookmark.destroy_all
puts "destroyed bookmarks"

User.create!(email: "test@example.com",
            password: "123456",
            # first_name: "Jane",
            # last_name: "Smith",
            # address: "Goltzstraße 41, 13587 Berlin, Germany",
            # verified: "yes"
        )


5.times do
  new_user = User.create!(email: Faker::Internet.email,
                          password: "password",
                        #   first_name: Faker::Name.first_name,
                        #   last_name: Faker::Name.last_name,
                        #   address: "Goltzstraße 41, 13587 Berlin, Germany",
                        #   verified: "yes"
                    )

   puts "#{new_user.id} was created"

  8.times do
    new_post = Post.create!(title: Faker::FunnyName.three_word_name,
                                      content: Faker::Quotes::Shakespeare,
                                      category: ["Advice", "Help offer", "Help search", "Giveaway"].sample,
                                      hidden: "no",
                                      solved: "no",
                                      kind: ["building", "neighborhood"].sample
                                    #   user: new_user
                                      )
    puts "#{new_post.id} was sucessfully created!"

    3.times do
      new_bookmark = Bookmark.create!

      puts "#{new_bookmark.id} was created"
    end
  end
end
