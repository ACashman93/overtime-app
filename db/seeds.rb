100.times do |post|
  Post.create!(date: Date.today, rationale: "This is my rationale content ##{post}")
end

puts "100 Posts created"