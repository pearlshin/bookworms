User.create :username => "pearl", :email => "p@p.com", :password => "123"

10.times do
  User.create :username => Faker::Internet.user_name, :email => Faker::Internet.email, :password => Faker::Internet.password
end


10.times do
  Book.create :title => Faker::Lorem.word, :author => Faker::Name.name, :summary => Faker::Lorem.paragraph
end

Book.create :title => "Harry Potter", :author => "J.K.Rowling", :summary => "Harry Potter has never played a sport while flying on a broomstick. He's never worn a Cloak of Invisibility, befriended a giant, or helped hatch a dragon. All Harry knows is a miserable life with the Dursleys, his horrible aunt and uncle, and their abominable son, Dudley. Harry's room is a tiny cupboard under the stairs, and he hasn't had a birthday party in ten years. But all that is about to change when a mysterious letter arrives by owl messenger: a letter with an invitation to a wonderful place he never dreamed existed. There he finds not only friends, aerial sports, and magic around every corner, but a great destiny that's been waiting for him... if Harry can survive the encounter"

10.times do
  Review.create :text => Faker::Lorem.paragraph, :user_id => rand(1..10), :book_id => rand(1..10)
end



