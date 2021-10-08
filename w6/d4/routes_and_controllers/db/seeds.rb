# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  {username: 'joe'},
  {username: 'matt'},
  {username: 'tony'},
  {username: 'rod'}
])


artworks = Artwork.create([
  {title: 'circle', img_url: 'circle.png', artist_id: 1},
  {title: 'square', img_url: 'square.png', artist_id: 2},
  {title: 'triangle', img_url: 'triangle.png', artist_id: 2},
  {title: 'rhombus', img_url: 'rhombus.png', artist_id: 4},
  {title: 'tesseract', img_url: 'tesseract.jpeg', artist_id: 1},
])


artwork_shares = ArtworkShare.create([
  {artwork_id: 5, viewer_id: 2},
  {artwork_id: 1, viewer_id: 3},
  {artwork_id: 2, viewer_id: 3},
  {artwork_id: 4, viewer_id: 1},
  {artwork_id: 2, viewer_id: 4},
])

comments = Comment.create([
  {body:'this is good art', user_id: 1, artwork_id: 2},
  {body:'this is bad art', user_id: 3, artwork_id: 3},
  {body:'this is ok art', user_id: 4, artwork_id: 5},
  {body:'this is great art', user_id: 2, artwork_id: 1},
  {body:'this is smelly art', user_id: 1, artwork_id: 4}
])

likes = Like.create([
  {user_id: 1, likeable_type: "Comment", likeable_id: 4},
  {user_id: 2, likeable_type: "Comment", likeable_id: 4},
  {user_id: 3, likeable_type: "Comment", likeable_id: 1},
  {user_id: 4, likeable_type: "Artwork", likeable_id: 2},
  {user_id: 3, likeable_type: "Artwork", likeable_id: 3},
])