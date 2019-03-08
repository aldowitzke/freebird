
puts 'Destroying users'
User.destroy_all

puts 'Destroying reviews'
Review.destroy_all

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
   email: 'contato@freebird.show',
   admin: true,
   password: '@123123',
   remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551298452/darth.jpg",
)

aldo = User.create!(
   first_name: 'Aldo',
   last_name: 'Witzke',
   email: 'aldomwa55@gmail.com',
   password: '123123',
   remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551462580/v2hnlvpvpzlzy3yb4mg2.jpg",
   phone: "(11)97644-9229",
   city: "São Paulo",
   state: "SP",
)

 ian = User.create!(
   first_name: 'Ian' ,
   last_name: 'Gigliotti',
   email: 'ian@sala33.com.br',
   artist: true,
   password: '123123',
   remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551877677/IMG_3035.jpg",
   phone: "(14)99789-1234",
   city: "Marília",
   state: "SP",
)

lucianauser = User.create!(
  first_name: 'Luciana',
  last_name: 'Pires',
  email: 'lupires.canta@gmail.com',
  artist: true,
  password: '123123',
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1552062324/lucianapires.png",
  phone: "(14)98159-9492"
  )

kreo = User.create!(
  first_name: 'Krêo',
  last_name: 'Fidélis',
  email: 'kreofidelis@hotmail.com',
  artist: true,
  password: '123123',
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1552062476/kreofidelis.jpg",
  phone: "(14)99761-3196"
  )

puts 'Creating categories'

casamento = Category.create!(name: 'Casamento')
cover = Category.create!(name: 'Cover')
banquinho = Category.create!(name: 'Banquinho e Violão')
autoral = Category.create!(name: 'Show Autoral')
tributo = Category.create!(name: 'Tributo')
banda = Category.create!(name: 'Banda')
infantil = Category.create!(name: 'Infantil')
churrasco = Category.create!(name: 'Churrasco')
corporativo = Category.create!(name: 'Corporativo')
formatura = Category.create!(name: 'Formatura')
roda = Category.create!(name: 'Roda de Samba')

puts 'Creating genres'

mpb = Genre.create!(name: 'MPB')
sertanejo = Genre.create!(name: 'Sertanejo')
rock = Genre.create!(name: 'Rock')
folk = Genre.create!(name: 'Folk')
jazz = Genre.create!(name: 'Jazz')
classica = Genre.create!(name: 'Classica')
criancas = Genre.create!(name: 'Crianças')
fuleragem = Genre.create!(name: 'Fuleragem')
forro = Genre.create!(name: 'Forró')
eletronica = Genre.create!(name: 'Eletrônica')
samba = Genre.create!(name: 'Samba')


puts 'Creating new projects...'

billie = Project.create!(
  artist: lucianauser,
  category: tributo,
  name: "Tributo Billie Holiday",
  description: "Luciana Pires é cantora e compositora. Traz em seu trabalho o melhor da música brasileira e do jazz, com toques atuais, acompanhando a evolução da música e se aproximando cada vez mais do público através de suas letras e melodias. Sempre com amor e respeito à arte.",
  city: "São Paulo",
  state: "SP",
  price: 2000,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551452069/billie.png",
  video: "https://www.youtube.com/watch?v=fW_wxq5HSUM",
  )

amy = Project.create!(
  artist: lucianauser,
  category: tributo,
  name: "Tributo Amy Winehouse",
  description: "Luciana Pires é cantora e compositora. Traz em seu trabalho o melhor da música brasileira e do jazz, com toques atuais, acompanhando a evolução da música e se aproximando cada vez mais do público através de suas letras e melodias. Sempre com amor e respeito à arte.Atualmente, a cantora possui um projeto de show autoral que evidencia a música no Brasil, o Jazz e o Soul. Possui também um show de Jazz e Música Brasileira e os projetos: Tributo à Amy Winehouse e Tributo à Billie Holiday.",
  city: "São Paulo",
  state: "SP",
  price: 2000,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1551453005/amy.png",
  video: "https://www.youtube.com/watch?v=jra9ZxVWAX0",
  )

jazzluciana = Project.create!(
  artist: lucianauser,
  category: casamento,
  name: "Jazz e Música Brasileira",
  description: "Luciana Pires é cantora e compositora. Traz em seu trabalho o melhor da música brasileira e do jazz, com toques atuais, acompanhando a evolução da música e se aproximando cada vez mais do público através de suas letras e melodias. Sempre com amor e respeito à arte.Atualmente, a cantora possui um projeto de show autoral que evidencia a música no Brasil, o Jazz e o Soul. Possui também um show de Jazz e Música Brasileira e os projetos: Tributo à Amy Winehouse e Tributo à Billie Holiday.",
  city: "São Paulo",
  state: "SP",
  price: 2000,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1552064249/jazz.png",
  video: "https://www.youtube.com/watch?v=CPhRXPUb-kI",
  )

luciana = Project.create!(
  artist: lucianauser,
  category: autoral,
  name: "Luciana Pires",
  description: "Luciana Pires é cantora e compositora. Traz em seu trabalho o melhor da música brasileira e do jazz, com toques atuais, acompanhando a evolução da música e se aproximando cada vez mais do público através de suas letras e melodias. Sempre com amor e respeito à arte.Atualmente, a cantora possui um projeto de show autoral que evidencia a música no Brasil, o Jazz e o Soul. Possui também um show de Jazz e Música Brasileira e os projetos: Tributo à Amy Winehouse e Tributo à Billie Holiday.",
  city: "São Paulo",
  state: "SP",
  price: 2000,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1552064679/lucianaautoral.png",
  video: "https://www.youtube.com/watch?v=EfWA22_t4e4",
  )

general = Project.create!(
  artist: kreo,
  category: banda,
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
  price: 2000,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1552065392/generalstyle.jpg",
  video: "https://www.youtube.com/watch?v=z74fWHWEup8",
  )

imaginaria = Project.create!(
  artist: kreo,
  category: banquinho,
  name: "Krêo Fidélis e a Banda Imaginária",
  description: "Banda Imaginária é o projeto mais recente do músico, que já fez história e histórias com bandas, solos, gravações autorais e covers cada vez mais reconhecidos.
  Vem aí um grande projeto em uma fase em que ele busca achar na simplicidade o que buscou a carreira toda: viver de música com muito prazer em criar e tocar. Conheça mais sobre Kreo Fidelis.",
  city: "Marília",
  state: "SP",
  price: 2000,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1552051282/p94urp0ylxywhesoupd6.jpg",
  video: "https://www.youtube.com/watch?v=lPqQH7sijlU",
  )

tio = Project.create!(
  artist: kreo,
  category: infantil,
  name: "Tio Fidélis",
  description: "Tio Fidélis é um projeto onde a música é o fator crucial para o desenvolvimento e adaptação da rotina da criança em ambientes escolares",
  city: "Marília",
  state: "SP",
  price: 2000,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1552067218/tiofideliscapa.jpg",
  video: "https://www.youtube.com/watch?v=BpPI7Gcs22w",
  )

kreo_autoral = Project.create!(
  artist: kreo,
  category: autoral,
  name: "Krêo Fidélis",
  description: "Sua primeira experiência com um instrumento musical foi acompanhado de um cavaco. Para Krêo, a música está presente em sua vida como uma “simbiose”. “Eu me considero músico desde o nascimento. O ambiente familiar sempre me proporcionou o contato com a música”, afirmou.",
  city: "São Paulo",
  state: "SP",
  price: 2000,
  remote_photo_url: "https://res.cloudinary.com/dwzrkks74/image/upload/v1552067735/kreocapa.jpg",
  video: "https://www.youtube.com/watch?v=8aKw-nNu-ss",
  )


puts 'Creating project genres'

ProjectGenre.create!(genre: jazz, project: billie)

ProjectGenre.create!(genre: jazz, project: amy)
ProjectGenre.create!(genre: folk, project: amy)

ProjectGenre.create!(genre: mpb, project: jazzluciana)
ProjectGenre.create!(genre: folk, project: jazzluciana)
ProjectGenre.create!(genre: jazz, project: jazzluciana)

ProjectGenre.create!(genre: jazz, project: luciana)
ProjectGenre.create!(genre: mpb, project: luciana)

ProjectGenre.create!(genre: rock, project: general)
ProjectGenre.create!(genre: sertanejo, project: general)
ProjectGenre.create!(genre: mpb, project: general)
ProjectGenre.create!(genre: eletronica, project: general)
ProjectGenre.create!(genre: fuleragem, project: general)

ProjectGenre.create!(genre: mpb, project: imaginaria)
ProjectGenre.create!(genre: folk, project: imaginaria)
ProjectGenre.create!(genre: rock, project: imaginaria)

ProjectGenre.create!(genre: criancas, project: tio)

ProjectGenre.create!(genre: mpb, project: kreo_autoral)
ProjectGenre.create!(genre: folk, project: kreo_autoral)
ProjectGenre.create!(genre: samba, project: kreo_autoral)



puts 'Creating events'

Event.create!(
  datetime: "2019-03-13 16:20:00",
  description: "Venham tocar no último Open Mic do Batch#211",
  project: amy,
  user: aldo,
  )

puts 'Creating reviews'

Review.create!(
  project: luciana,
  content: "Lindo, emocionante e sensível",
  rate: 5,
  user: aldo,
  )

puts 'done!'
