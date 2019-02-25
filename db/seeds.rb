# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all

Project.create!(
 genre: "rock",
 band_format: "som de barzinho",
 artistic_name: "rei dos palcos",
 city: "são paulo"
 )

Project.create(
 genre: "mpb",
 band_format: "orquestra",
 artistic_name: "ian orchestra",
 city: "rio de janeiro"
 )

Project.create(
 genre: "psicodelico",
 band_format: "banda",
 artistic_name: "di boa band",
 city: "recife"
 )

Project.create(
 genre: "rap",
 band_format: "solo",
 artistic_name: "mc joao",
 city: "marilia"
 )
