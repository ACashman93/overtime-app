@user = User.create(email: "test@test.com",
                    password: "123456",
                    password_confirmation: "123456",
                    last_name: "Bond",
                    first_name: "James",
                    phone: "9714075741")

puts "1 User created"

@admin_user = AdminUser.create(email: "admin@test.com",
                  password: "123456",
                  password_confirmation: "123456",
                  last_name: "Cashman",
                  first_name: "Andrew",
                  phone: "9714075741")

puts "1 AdminUser created"

50.times do |post|
  Post.create!(date: Date.today,
                rationale: "This is my rationale content ##{post}. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                user_id: @user.id,
                overtime_request: 2.5)
end

puts "100 Posts created"

50.times do |post|
  Post.create!(date: Date.today,
                rationale: "This is my rationale content ##{post}",
                user_id: @admin_user.id,
                overtime_request: 2.5)
end

puts "100 Admin Posts created"

1.times do |audit_log|
  AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
  AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
  AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))
end

puts "6 AuditLogs created"

