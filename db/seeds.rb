Project.destroy_all
User.destroy_all

aldo = User.create!(
  first_name: 'Aldo',
  last_name: 'Witzke',
  email: 'aldinholindo@gmail.com',
  artist: false,
)

ian = User.create!(
  first_name: 'Ian' ,
  last_name: 'Gigliotti',
  email: 'ianlindo@gmail.com',
  artist: true,
)

Project.create!(
 genre: "rock",
 band_format: "som de barzinho",
 artistic_name: "rei dos palcos",
 city: "são paulo",
 )

Project.create!(
 genre: "mpb",
 band_format: "orquestra",
 artistic_name: "ian orchestra",
 city: "rio de janeiro",
 )

Project.create(
 genre: "psicodelico",
 band_format: "banda",
 artistic_name: "di boa band",
 city: "recife",
 )

Project.create(
 genre: "rap",
 band_format: "solo",
 artistic_name: "mc joao",
 city: "marilia",
 )
