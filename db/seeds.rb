users = [
  {name: "Matt", email: "matthewjones00@me.com", password: "password"},
  {name: "Derrick", email: "derrick_ray@me.com", password: "password"},
  {name: "Kristin", email: "kristinjones00@hotmail.com", password: "password"},
  {name: "Jennifer", email: "jjsabel@yahoo.com", password: "password"},
  {name: "Pat", email: "durat@yahoo.com", password: "password"},
  {name: "Jay", email: "drjaysd@gmail.com", password: "password"},
  {name: "Joe", email: "x9tx9t@gmai.com", password: "password"}
]

comments = [
  {trip_id: 1, guest_id: 1, expense_id: 1, text: "This trip sounds amazing"},
  {trip_id: 1, guest_id: 2, expense_id: 3, text:"This trip is too expensive"},
  {trip_id: 2, guest_id: 3, expense_id: 5, text:"I don't care"}
]

trips = [
  {destination: "Santorini, Greece", description: "Enjoy sunsets and wine", details: "Fly in on a Sunday afternoon and depart Tuesday Evening", host_id: 1, arrive: Date.parse('20/8/2017'), depart: Date.parse('22/8/2017')},
  {destination: "Athens, Greece", description: "Explore ancient Roman ruins", details: "This short trip will be filled with a lot of sightseeing", host_id: 1, arrive: Date.parse('22/8/2017'), depart: Date.parse('24/8/2017')},
  {destination: "Lisbon, Portugal", description: "Visit prehistoric ruins from before civilization", details: "Before returning to the states, we'll relax and soak in some rays", host_id: 1, arrive: Date.parse('2/9/2017'), depart: Date.parse('4/9/2017')}
]

costs = [
  {trip_id: 1, guest_id: 4, cost: 500},
  {trip_id: 2, guest_id: 3, cost: 740},
  {trip_id: 3, guest_id: 1, cost: 80},
  {trip_id: 4, guest_id: 6, cost: 120},
  {trip_id: 5, guest_id: 2, cost: 300},
  {trip_id: 4, guest_id: 5, cost: 220},
  {trip_id: 3, guest_id: 7, cost: 330},
  {trip_id: 2, guest_id: 6, cost: 410},
  {trip_id: 1, guest_id: 7, cost: 50}
]

User.create!(users)
Comment.create!(comments)
Trip.create!(trips)
Expense.create!(costs)
