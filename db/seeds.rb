@user1 = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", username: 'testuser')
@user2 = User.create(email: "test2@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", username: 'testuser2')


5.times do
 Topic.create!(title: "##{Faker::Lorem.sentence}", user_id: @user1.id)
end
5.times do
 Topic.create!(title: "##{Faker::Lorem.sentence}", user_id: @user2.id)
end
topics = Topic.all
60.times do
  Bookmark.create!(url: Faker::Internet.url, topic: topics.sample)
end

puts "2 user created"
puts "10 topics created."
puts "60 bookmarks created."
