# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users= ["Ruya", "Claire", "Aziza","Yg","giulia"]
1.upto(5) do |n|

User.create(username: users[n-1], email: "#{users[n-1]}" +"@gmail.com", password: 'password')



end	


1.upto(5) do |n|

Event.create(place: "event-#{10+n} place", date: Time.now-n.week, creator: User.find(n))



end	

@events =Event.all.order(created_at: :desc).take(5) 

@events.each do |e|

User.all.each do |u|
e.attendees << u

end


end	

1.upto(5) do |n|

Event.create(place: "event-#{n} place", date: Time.now+n.week, creator: User.find(n))



end	

@events =Event.all.order(created_at: :desc).take(5) 

@events.each do |e|

User.all.each do |u|
e.attendees << u

end

end