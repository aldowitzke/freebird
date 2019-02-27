
puts 'Destroying users'
User.destroy_all

puts 'Destroying project genres'
ProjectGenre.destroy_all

puts 'Destroying genres'
Genre.destroy_all

puts 'Destroying projects'
Project.destroy_all

puts 'Destroying categories'
Category.destroy_all

puts 'Creating new users...'

freebird = User.create!(
   first_name: 'admin',
   last_name: 'admin',
   email: 'freebird@freebird.com',
   admin: true,
   password: '123456',
   remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551298452/darth.jpg",
)

aldo = User.create!(
   first_name: 'Aldo',
   last_name: 'Witzke',
   email: 'aldinholindo@gmail.com',
   password: '123456',
   remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551298205/aldo.jpg",
)

 ian = User.create!(
   first_name: 'Ian' ,
   last_name: 'Gigliotti',
   email: 'ianlindo@gmail.com',
   artist: true,
   password: '123456',
   remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551298289/ian_log_in.jpg",
)

puts 'Creating categories'

casamento = Category.create!(name: 'Casamento')
cover = Category.create!(name: 'Cover')
banquinho = Category.create!(name: 'Banquinho e Violão')
pauleira = Category.create!(name: 'Rock Pauleira')

puts 'Creating genres'

mpb = Genre.create!(name: 'MPB')
sertanejo = Genre.create!(name: 'Sertanojo')
rock = Genre.create!(name: 'Rock')
tecnobrega = Genre.create!(name: 'Tecnobrega')
folk = Genre.create!(name: 'Folk')


puts 'Creating new projects...'

encanta = Project.create!(
  artist: ian,
  category: banquinho,
  name: "Ian Canta & Encanta",
  description: "Todo charme e elegância do artista Ian em formato intimista",
  city: "são paulo",
  state: "SP",
  price: 500,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551295802/ljdrp2xhodn1ku5kj477.jpg",
)

casar = Project.create!(
  artist: ian,
  category: casamento,
  name: "Case e se arrependa",
  description: "O projeto perfeito para destruir sua festa de casamento",
  city: "rio de janeiro",
  state: "RJ",
  price: 2500,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551297488/wedding.jpg",
)

amanha = Project.create!(
  artist: ian,
  category: cover,
  name: "Eu sou você amanhã",
  description: "Ian em seu melhor cover de si mesmo",
  city: "recife",
  state: "PE",
  price: 4000,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551297588/bradley.jpg",
)

balanca = Project.create!(
  artist: ian,
  category: pauleira,
  name: "Balançando a cabeça com o Ianzão",
  description: "Ian inovando com toda sua rebeldia e irreverência",
  city: "marilia",
  state: "SP",
  price: 1500,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551297724/metal.jpg",
)

puts 'Creating project genres'

ProjectGenre.create!(genre: rock, project: balanca)
ProjectGenre.create!(genre: folk, project: encanta)
ProjectGenre.create!(genre: tecnobrega, project: amanha)
ProjectGenre.create!(genre: mpb, project: casar)

puts 'done!'


puts 'Creating events'

Event.create!(
  datetime: "2019-05-20 12:00:00",
  description: "Quero me casar",
  project: amanha,
  user: aldo,
  )

Event.create!(
  datetime: "2019-05-15 13:00:00",
  description: "Quero um pro meu churrasco",
  project: balanca,
  user: aldo,
  )
