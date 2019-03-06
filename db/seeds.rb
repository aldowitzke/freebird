
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
   email: 'aldolindo@gmail.com',
   password: '123456',
   remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551298205/aldo.jpg",
   phone: "(11)9999-4567",
   city: "São Paulo",
   state: "SP",
)

 ian = User.create!(
   first_name: 'Ian' ,
   last_name: 'Gigliotti',
   email: 'ianlindo@gmail.com',
   artist: true,
   password: '123456',
   remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551877677/IMG_3035.jpg",
   phone: "(14)99789-1234",
   city: "Marília",
   state: "SP",
)

luciana = User.create!(
  first_name: 'Luciana',
  last_name: 'Pires',
  email: 'lupires.canta@gmail.com',
  artist: true,
  password: '123456',
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551451065/luciana.png",
  phone: "(14)98159-9492"
  )

kreo = User.create!(
  first_name: 'Kréo',
  last_name: 'Fidélis',
  email: 'kreofidelis@hotmail.com',
  artist: true,
  password: '123456',
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551451435/kreoperfil.jpg",
  phone: "(14)99761-3196"
  )

puts 'Creating categories'

casamento = Category.create!(name: 'Casamento')
cover = Category.create!(name: 'Cover')
banquinho = Category.create!(name: 'Banquinho e Violão')
pauleira = Category.create!(name: 'Rock Pauleira')
dancar = Category.create!(name: 'Swinguera')
fuleragem = Category.create!(name: 'Fuleragem')
solo = Category.create!(name: 'Artista Solo')

puts 'Creating genres'

mpb = Genre.create!(name: 'MPB')
sertanejo = Genre.create!(name: 'Sertanejo')
rock = Genre.create!(name: 'Rock')
tecnobrega = Genre.create!(name: 'Tecnobrega')
folk = Genre.create!(name: 'Folk')
jazz = Genre.create!(name: 'Jazz')


puts 'Creating new projects...'

encanta = Project.create!(
  artist: ian,
  category: banquinho,
  name: "Ian Canta & Encanta",
  description: "Todo charme e elegância do artista Ian em formato intimista",
  city: "São Paulo",
  state: "SP",
  price: 500,
  video: "https://www.youtube.com/embed/nSbzyEJ8X9E",
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551461833/born.jpg",
)

casar = Project.create!(
  artist: ian,
  category: casamento,
  name: "Case e se arrependa",
  description: "O projeto perfeito para destruir sua festa de casamento",
  city: "Rio de Janeiro",
  state: "RJ",
  price: 2500,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551462046/bandwedding.jpg",
  video: "https://www.youtube.com/embed/U2fQS2W1iSQ",
)


balanca = Project.create!(
  artist: ian,
  category: pauleira,
  name: "Balança a cabeça com o Ian",
  description: "Ian inovando com toda sua rebeldia e irreverência",
  city: "Marilia",
  state: "SP",
  price: 1500,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551297724/metal.jpg",
  video: "https://www.youtube.com/embed/TcBYBukjkBY",
)

luciana_billie = Project.create!(
  artist: luciana,
  category: dancar,
  name: "Tributo a Billie Holiday",
  description: "Luciana Pires é cantora e compositora. Traz em seu trabalho o melhor da música brasileira e do jazz, com toques atuais, acompanhando a evolução da música e se aproximando cada vez mais do público através de suas letras e melodias. Sempre com amor e respeito à arte.",
  city: "São Paulo",
  state: "SP",
  price: 8000,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551452069/billie.png",
  video: "https://www.youtube.com/embed/WJCpDmpiobk",
  )

luciana_amy = Project.create!(
  artist: luciana,
  category: cover,
  name: "Amy Winehouse Cover",
  description: "Luciana Pires é cantora e compositora. Traz em seu trabalho o melhor da música brasileira e do jazz, com toques atuais, acompanhando a evolução da música e se aproximando cada vez mais do público através de suas letras e melodias. Sempre com amor e respeito à arte.Atualmente, a cantora possui um projeto de show autoral que evidencia a música no Brasil, o Jazz e o Soul. Possui também um show de Jazz e Música Brasileira e os projetos: Tributo à Amy Winehouse e Tributo à Billie Holiday.",
  city: "São Paulo",
  state: "SP",
  price: 10000,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551453005/amy.png",
  video: "https://www.youtube.com/embed/jra9ZxVWAX0",
  )

general_style = Project.create!(
  artist: kreo,
  category: fuleragem,
  name: "General Style",
  description: "A banda GENERAL STYLE vem com um repertório inusitado, uma mistura de estilos e sons que fazem a cabeça de todos e todas!
  Temos alguns modelos de apresentação, de a acordo com seu estabelecimento ou evento!
  Resumindo... temos todos os ritmos e sucessos para cada ocasião! Das mais atuais aos grandes clássicos!
  Seleções de músicas que não podem faltar em uma noite de muita alegria e descontração!
  Musicas pra se dançar juntinho ou não!
  Uma viagem musical de cada estilo partindo dos anos 60,70,80,90 e 2000 pra frente!
  A proposta é ir de encontro com o público,
  por isso não seguimos um repertório fechado!
  GENERAL STYLE - onde começa a sua festa!",
  city: "Marília",
  state: "SP",
  price: 1200,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551460360/general.jpg",
  video: "https://www.youtube.com/embed/31saoUyKcWA",
  )

onemanband = Project.create!(
  artist: kreo,
  category: solo,
  name: "One Man Band!",
  description: "Banda Imaginária é o projeto mais recente do músico, que já fez história e histórias com bandas, solos, gravações autorais e covers cada vez mais reconhecidos.
  Vem aí um grande projeto em uma fase em que ele busca achar na simplicidade o que buscou a carreira toda: viver de música com muito prazer em criar e tocar. Conheça mais sobre Kreo Fidelis.",
  city: "Marília",
  state: "SP",
  price: 500,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551461454/one_man.jpg",
  video: "https://www.youtube.com/embed/EgbAqk24kQY",
  )


puts 'Creating project genres'

ProjectGenre.create!(genre: rock, project: balanca)
ProjectGenre.create!(genre: mpb, project: balanca)
ProjectGenre.create!(genre: folk, project: balanca)

ProjectGenre.create!(genre: folk, project: encanta)
ProjectGenre.create!(genre: tecnobrega, project: encanta)
ProjectGenre.create!(genre: sertanejo, project: encanta)

ProjectGenre.create!(genre: mpb, project: casar)
ProjectGenre.create!(genre: rock, project: casar)
ProjectGenre.create!(genre: sertanejo, project: casar)

ProjectGenre.create!(genre: jazz, project: luciana_billie)

ProjectGenre.create!(genre: jazz, project: luciana_amy)

ProjectGenre.create!(genre: rock, project: general_style)
ProjectGenre.create!(genre: sertanejo, project: general_style)
ProjectGenre.create!(genre: mpb, project: general_style)
ProjectGenre.create!(genre: tecnobrega, project: general_style)

ProjectGenre.create!(genre: mpb, project: onemanband)
ProjectGenre.create!(genre: rock, project: onemanband)
ProjectGenre.create!(genre: folk, project: onemanband)


puts 'Creating events'

Event.create!(
  datetime: "2019-05-15 13:00:00",
  description: "Quero um pro meu churrasco",
  project: balanca,
  user: aldo,
  )

Event.create!(
  datetime: "2019-07-20 18:00:00",
  description: "Gostaria que tocasse na minha bodas de ouro!",
  project: luciana_amy,
  user: ian,
  )

Event.create!(
  datetime: "2019-06-10 14:00:00",
  description: "Adorei o projeto, vc faria metade do preço?",
  project: general_style,
  user: ian,
  )

Event.create!(
  datetime: "2019-05-08 20:00:00",
  description: "Quero você de qualquer jeito!",
  project: onemanband,
  user: ian,
  )

puts 'Creating reviews'

Review.create!(
  project: balanca,
  content: "Essa Coca é fanta... de Rock não tem nada!",
  user: aldo,
  )

Review.create!(
  project: encanta,
  content: "O Ian é um gato, se puder me ligar depois te agradeço!",
  user: aldo,
  )

Review.create!(
  project: encanta,
  content: "Lindo, emocionante e sensível",
  user: aldo,
  )

Review.create!(
  project: casar,
  content: "Animou muito meu casamento, agora é trabaiar",
  user: aldo,
  )

Review.create!(
  project: onemanband,
  content: "Perfeito!!!!!",
  user: ian,
  )

Review.create!(
  project: general_style,
  content: "Detestei vocês não recomendo! Horrível... horrível",
  user: ian,
  )

puts 'done!'
