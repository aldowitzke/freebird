
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
   email: 'freebird@freebird.com',
   admin: true,
   password: '123456',
)

aldo = User.create!(
   first_name: 'Aldo',
   last_name: 'Witzke',
   email: 'aldinholindo@gmail.com',
   password: '123456',
)

 ian = User.create!(
   first_name: 'Ian' ,
   last_name: 'Gigliotti',
   email: 'ianlindo@gmail.com',
   artist: true,
   password: '123456',
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
  # não sei colocar as coisas que estao em outra tabela
  artist: ian,
  category: banquinho,
  name: "Ian Canta & Encanta",
  # genre: mpb,
  # artistic_name: "rei dos palcos",
  city: "são paulo",
  price: 100,

)

casar = Project.create!(
  # não sei colocar as coisas que estao em outra tabela
  artist: ian,
  category: casamento,
  name: "Case e se arrependa",
  # genre: "mpb",
  # artistic_name: "ian orchestra",
  city: "rio de janeiro",
  price: 200,
)

amanha = Project.create(
  # não sei colocar as coisas que estao em outra tabela
  artist: ian,
  category: cover,
  name: "Eu sou você amanhã",
  # genre: "psicodelico",
  # artistic_name: "di boa band",
  city: "recife",
  price: 300,

)

balanca = Project.create(
  # não sei colocar as coisas que estao em outra tabela
  artist: ian,
  category: pauleira,
  name: "Balançando a cabeça com o Ianzão",
  # genre: "rap",
  # artistic_name: "mc joao",
  city: "marilia",
  price: 400,
)


puts 'Creating project genres'

ProjectGenre.create!(genre: rock, project: balanca)

ProjectGenre.create!(genre: folk, project: encanta)

ProjectGenre.create!(genre: tecnobrega, project: amanha)

ProjectGenre.create!(genre: mpb, project: casar)

puts 'done!'
