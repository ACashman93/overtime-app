@user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", last_name: "Bond", first_name: "James")

puts "1 User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "This is my rationale content ##{post}", user_id: @user.id)
end

puts "100 Posts created"

