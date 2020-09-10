# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Allergy.delete_all
Toy.delete_all
Child.delete_all


sam = Child.create(name: "Sam Green", img_url:"./assets/sam.png", parent_email: "lily_jackson's_mom@gmail.com", potty_trained: true, birthday: "2016-03-25")
lily = Child.create(name: "Lily Jackson", img_url:"./assets/lily.png", parent_email: "lily_jackson's_mom@gmail.com", potty_trained: false, birthday: "2018-07-01")

Toy.create(name: "Giraffe", img_url: "./assets/giraffe.png", child_id: sam.id)
Toy.create(name: "Bear", img_url: "./assets/bear.png", child_id: sam.id)
Toy.create(name: "Doll", img_url: "./assets/doll.png", child_id: lily.id)

Allergy.create(name: "peanuts", severe: true, child_id: sam.id)
Allergy.create(name: "soy", severe: true, child_id: sam.id)

Allergy.create(name: "dairy", severe: true, child_id: lily.id)
Allergy.create(name: "tree nuts", severe: true, child_id: lily.id)