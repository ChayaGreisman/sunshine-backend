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


sam = Child.create(name: "Sam Green", img_url:"https://media-private.canva.com/7yyi4/MAEBe27yyi4/1/tl.png?response-expires=Fri%2C%2010%20Jul%202020%2013%3A41%3A39%20GMT&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20200710T113632Z&X-Amz-SignedHeaders=host&X-Amz-Expires=7506&X-Amz-Credential=AKIAJWF6QO3UH4PAAJ6Q%2F20200710%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=2fa893d75f4d62962c6d305eee247342f9b0a030569899a59cac437499a4c51c", parent_email: "chayamgreisman@gmail.com", potty_trained: true, birthday: "2016-03-25")
lily = Child.create(name: "Lily Spiro", img_url:"https://media-private.canva.com/CLmhU/MAEBfBCLmhU/1/tl.png?response-expires=Fri%2C%2010%20Jul%202020%2013%3A54%3A33%20GMT&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20200710T113632Z&X-Amz-SignedHeaders=host&X-Amz-Expires=8280&X-Amz-Credential=AKIAJWF6QO3UH4PAAJ6Q%2F20200710%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=c1908bd5f741f8c5e1c651a4c43d40278d621ac7c32fcaa38d071df15a33316e", parent_email: "chayamgreisman@gmail.com", potty_trained: false, birthday: "2018-07-01")

Toy.create(name: "Giraffe", img_url: "https://media-private.canva.com/QKXvI/MAEBfDQKXvI/1/t.png?response-expires=Fri%2C%2010%20Jul%202020%2003%3A48%3A01%20GMT&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20200710T005023Z&X-Amz-SignedHeaders=host&X-Amz-Expires=10657&X-Amz-Credential=AKIAJWF6QO3UH4PAAJ6Q%2F20200710%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=3d01d2fb68e34a6c1d69181dd6897cda203172dd8b6fd593756bd9b6fbdc5c0f", child_id: sam.id)
Toy.create(name: "Bear", img_url: "https://media-private.canva.com/B-0-k/MAEBfBB-0-k/1/t.png?response-expires=Fri%2C%2010%20Jul%202020%2003%3A50%3A17%20GMT&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20200710T005023Z&X-Amz-SignedHeaders=host&X-Amz-Expires=10793&X-Amz-Credential=AKIAJWF6QO3UH4PAAJ6Q%2F20200710%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=f73604aaf42d5d05254f75f1461aee98111473c40299caa2af8b369a77c49629", child_id: sam.id)
Toy.create(name: "Doll", img_url: "https://media-private.canva.com/7HDGk/MAEBfJ7HDGk/1/tl.png?response-expires=Fri%2C%2010%20Jul%202020%2014%3A22%3A07%20GMT&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20200710T113632Z&X-Amz-SignedHeaders=host&X-Amz-Expires=9934&X-Amz-Credential=AKIAJWF6QO3UH4PAAJ6Q%2F20200710%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=caa507d5bdbb6d94740e21d052e77a04abebdbce9883d6ac561af1dcb8340164", child_id: lily.id)

Allergy.create(name: "peanuts", severe: true, child_id: sam.id)
Allergy.create(name: "soy", severe: true, child_id: sam.id)

Allergy.create(name: "dairy", severe: true, child_id: lily.id)
Allergy.create(name: "tree nuts", severe: true, child_id: lily.id)