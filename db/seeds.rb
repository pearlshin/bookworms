User.create :username => "pearl", :email => "p@p.com", :password => "123"

10.times do
  User.create :username => Faker::Internet.user_name, :email => Faker::Internet.email, :password => Faker::Internet.password
end

10.times do
  Book.create :title => Faker::Lorem.word, :author => Faker::Name.name
end

10.times do
  Review.create :text => Faker::Lorem.paragraph, :user_id => rand(1..10), :book_id => rand(1..10)
end



