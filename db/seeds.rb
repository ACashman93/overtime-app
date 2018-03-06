@user = User.create(email: "test@test.com",
                    password: "123456",
                    password_confirmation: "123456",
                    last_name: "Bond",
                    first_name: "James",
                    phone: "9714075741")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
                  password: "123456",
                  password_confirmation: "123456",
                  last_name: "Cashman",
                  first_name: "Andrew",
                  phone: "9714075741")

puts "1 AdminUser created"

100.times do |post|
  Post.create!(date: Date.today,
                rationale: "This is my rationale content ##{post}",
                user_id: @user.id,
                overtime_request: 2.5)
end

puts "100 Posts created"

100.times do |audit_log|
  AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 AuditLogs created"
