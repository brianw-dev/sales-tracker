require 'faker'

5.times do
  User.create(username: Faker::GameOfThrones.character.delete(' '), password: "123")
end

5.times do
  Event.create(name: Faker::HarryPotter.character)
end

10.times do
  Ticket.create(initial_price: rand(60..100), user: User.all.sample, event: Event.all.sample)
end
