@employee = Employee.create(email: "test@test.com",
                    password: "123456",
                    password_confirmation: "123456",
                    last_name: "Bond",
                    first_name: "James",
                    phone: "5039296656")

puts "1 employee created"

@admin_employee = AdminUser.create(email: "admin@test.com",
                  password: "123456",
                  password_confirmation: "123456",
                  last_name: "Cashman",
                  first_name: "Andrew",
                  phone: "5039296656")

puts "1 AdminUser created"

AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 AuditLogs created"

100.times do |post|
  Post.create!(date: Date.today,
                rationale: "This is my rationale content ##{post}. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                user_id: @employee.id,
                overtime_request: 2.5)
end

puts "100 Posts created"


