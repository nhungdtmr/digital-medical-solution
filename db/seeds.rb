array = ["Hatha", "Ashtanga", "Iyengar", "Kundalini", "Vinyasa"]

array.each do |cate|
  Category.create! name: "#{cate}"
end

name = "No Name"
email = "admin@gmail.com"
password = "111111"
role = 1
User.create(name: name, email: email, password: password, role: role)

name = "No Name"
email = "user2@gmail.com"
password = "111111"
role = 0
User.create(name: name, email: email, password: password, role: role)

50.times do |n|
  name = "Tai khoan #{n+1}"
  email = "tk#{n+1}@gmail.com"
  password = "111111"
  User.create!(name: name, email: email, password: password)
end
