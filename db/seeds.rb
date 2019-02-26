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
 city: "são paulo",
 artist: ian,
 name: "rock"
 )

Project.create!(
 city: "rio de janeiro",
 artist: ian,
 name: "rap"
 )

Project.create(
 city: "recife",
 artist: ian,
 name: "mpb"
 )

Project.create(
 city: "marilia",
 artist: ian,
 name: "seila"
 )

puts 'done!'
