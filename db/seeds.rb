puts 'Destroying users'

User.destroy_all

puts 'Destroying projects'

Project.destroy_all

puts 'Creating new users...'

aldo = User.create!(
  first_name: 'Aldo',
  last_name: 'Witzke',
  email: 'aldinholindo@gmail.com',
  artist: false,
  password: '123456',
)

ian = User.create!(
  first_name: 'Ian' ,
  last_name: 'Gigliotti',
  email: 'ianlindo@gmail.com',
  artist: true,
  password: '123456',
)

puts 'Creating new projects...'

Project.create!(
 genre: "rock",
 band_format: "som de barzinho",
 artistic_name: "rei dos palcos",
 city: "são paulo",
 artist: ian,
 )

Project.create!(
 genre: "mpb",
 band_format: "orquestra",
 artistic_name: "ian orchestra",
 city: "rio de janeiro",
 artist: ian,
 )

Project.create(
 genre: "psicodelico",
 band_format: "banda",
 artistic_name: "di boa band",
 city: "recife",
 artist: ian,
 )

Project.create(
 genre: "rap",
 band_format: "solo",
 artistic_name: "mc joao",
 city: "marilia",
 artist: ian,
 )

puts 'done!'


# Criar seed de categories e de genres
# Depois criar o seed com os foreign keys das tabelas de categories e genres]
# Para depois poder testar a função de search com multitabelas
