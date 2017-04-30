require 'faker'

5.times do
  User.create(username: Faker::GameOfThrones.character.delete(' '), password: "123")
end

5.times do
  Event.create(name: Faker::HarryPotter.character)
end

10.times do
  Tracking.create(order_cost: rand(200..400), num_of_tix: rand(1..16), user: User.all.sample, event: Event.all.sample)
end

10.times do
	Sale.create(price: rand(200.400),
		num_of_tix: rand(1..16), user: User.all.sample, event: Event.all.sample
		)
end