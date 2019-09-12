# Welcome to FreeBird!

FreeBird is a platform for musicians to find jobs! 

Here you can share your musical skills and get paid to play a concert at someone's wedding or at a company event!

#### Homepage

![homepage](https://i.imgur.com/oOHVZmA.jpg)

#### Musicians offers

![musician-offers](https://i.imgur.com/uSt6qUJ.jpg)

#### Musician offer

![musician-offer](https://i.imgur.com/FsDyVwJ.jpg)

#### Reviews and Q&A

![reviews-q&a](https://i.imgur.com/91Bgl7e.jpg)

#### Proposals management

![proposals-management](https://i.imgur.com/gomMMyN.jpg)

#### Contact artist

![contact-artist](https://i.imgur.com/rsXINaP.jpg)

#### See received proposals as an artist

![proposals-management-artist](https://i.imgur.com/bNzKc9g.jpg)

You can check out all other screenshots [here](https://drive.google.com/drive/folders/1a2cqxGtKS-RZnakb1mYCAVyAG-5lvVoj?usp=sharing).

### Getting started

Clone this repository

```
$ git clone https://github.com/aldowitzke/freebird.git

$ cd freebird
```

Run bundle install

```
$ bundle install
```

Create Database, migrations and seeds

```
$ rails db:create db:migrate db:seed
```

Run your server

```
$ rails server
```

Open your browser, go to localhost:3000 and enjoy the platform :)

### Some considerations about FreeBird

1) Unfortunately, our platform is only in brazilian portuguese.

2) Our app is not optimized for small screens. If you try it on mobile, you will find some bugs and your experience will be affected.

### Functionalities

- As an artist
  - Offer your musician skills
  - Manage all your offers from your "studio" page
  - Answer questions from people interested in your skills
  - Accept/Decline proposals

- As an hirer
  - Filter your interests and cities
  - Search for musicians
  - Check musician's reviews
  - Ask questions
  - Contact musician with more information, prices and dates
  - Get musician contact
  - Manage your proposals
  - Leave a review for the musician you hired

### Built with

- [Rails](https://rubyonrails.org/)
- [JavaScript](https://www.javascript.com/)
- [Bootstrap](https://getbootstrap.com/)
- [Devise](https://github.com/plataformatec/devise)
- [Pundit](https://github.com/varvet/pundit)
- [Cloudinary](https://cloudinary.com/)
- [PGSearch](https://github.com/Casecommons/pg_search)
- [SimpleForm](https://github.com/plataformatec/simple_form)
- [PostgreSQL](https://www.postgresql.org/)

FreeBird was created by Aldo Witzke, Ian Gigliotti, João Gabriel and Leandro Souza during our [Le Wagon bootcamp](https://www.lewagon.com/) between Jan-Mar, 2019 (batch #211).
