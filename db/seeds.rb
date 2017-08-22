@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", username: 'testuser')

50.times do
 Topic.create!(title: Faker::Lorem.sentence, user_id: @user.id)
end
topics = Topic.all
300.times do
  Bookmark.create!(url: Faker::Internet.url, topic: topics.sample)
end

puts "1 user created"
puts "50 topics created."
puts "300 bookmarks created."
