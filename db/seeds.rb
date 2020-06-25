# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dev.destroy_all
Project.destroy_all


danny_coop = Dev.create(name: "Danny Coop", experience: rand(1..10), workplace: "Flat co")
ian_mac = Dev.create(name: "Ian MacKinnon", experience: rand(1..10), workplace: "Flat co")
andy = Dev.create(name: "Andy", experience: rand(1..10), workplace: "Flat co")
catrina = Dev.create(name: "Catrina Friday", experience: rand(1..10), workplace: "Flat co")
chine_anike = Dev.create(name: "Chine Anikwe", experience: rand(1..10), workplace: "Flat co")
dave_frame = Dev.create(name: "Dave Frame", experience: rand(1..10), workplace: "Flat co")
david_chung = Dev.create(name: "David Chung", experience: rand(1..10), workplace: "Flat co")
diego_zegarra = Dev.create(name: "Diego Zegarra", experience: rand(1..10), workplace: "Flat co")
esther_kang = Dev.create(name: "Esther Kang", experience: rand(1..10), workplace: "Flat co")
issa = Dev.create(name: "Issa", experience: rand(1..10), workplace: "Flat co")
jolie_brown = Dev.create(name: "Jolie Brown", experience: rand(1..10), workplace: "Flat co")
jordan_schraeder = Dev.create(name: "Jordan Schraeder", experience: rand(1..10), workplace: "Flat co")
johnathan = Dev.create(name: "Johnathan", experience: rand(1..10), workplace: "Flat co")
kosi = Dev.create(name: "Kosi", experience: rand(1..10), workplace: "Flat co")
luis_fernandez = Dev.create(name: "Luis Fernandez", experience: rand(1..10), workplace: "Flat co")
maddie = Dev.create(name: "Maddie", experience: rand(1..10), workplace: "Flat co")
marcos_velasco = Dev.create(name: "Marcos Velasco", experience: rand(1..10), workplace: "Flat co")
michael_jester = Dev.create(name: "Michael Jester", experience: rand(1..10), workplace: "Flat co")
mike_causey = Dev.create(name: "Mike Causey", experience: rand(1..10), workplace: "Flat co")
paul_nicholsen = Dev.create(name: "Paul Nicholsen", experience: rand(1..10), workplace: "Flat co")
shannon = Dev.create(name: "Shannon", experience: rand(1..10), workplace: "Flat co")
shawn_alxander = Dev.create(name: "Shawn Alexander", experience: rand(1..10), workplace: "Flat co")
solomon = Dev.create(name: "Solomon", experience: rand(1..10), workplace: "Flat co")
steve_pesce = Dev.create(name: "Steve Pesce", experience: rand(1..10), workplace: "Flat co")
su = Dev.create(name: "Su", experience: rand(1..10), workplace: "Flat co")
matine = Dev.create(name: "Matine", experience: rand(1..10), workplace: "Flat co")
tien_phan = Dev.create(name: "Tien Phan", experience: rand(1..10), workplace: "Flat co")
zara = Dev.create(name: "Zara", experience: rand(1..10), workplace: "Flat co")


10.times do 
    Project.create(name: Faker::App.name, description: Faker::Company.catch_phrase)
end


    