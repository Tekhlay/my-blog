# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Post.destroy_all 
Comment.destroy_all
Like.destroy_all

author1 = User.create!(
  name: "Tom",
  photo: "https://picsum.photos/200/300",
  bio: "This is author 1 bio",
  email: "author1@gmail.com",
  password: "author1"
)

author2 = User.create!(
  name: "Tekhlay",
  photo: "https://picsum.photos/200/300",
  bio: "This is author 2 bio",
  email: "author2@gmail.com",
  password: "author2"
)

post1 = Post.create!(
  title: "Post 1",
  text: "This is post 1 body",
  author: author1
)

post2 = Post.create!(
  title: "Post 2",
  text: "This is post 2 body",
  author: author2
)

comment1 = Comment.create!(
  text: "This is comment 1",
  author: author1,
  post: post1
)

comment2 = Comment.create!(
  text: "This is comment 2",
  author: author2,
  post: post2
)

like1 = Like.create!(
  author: author1,
  post: post1
)

like2 = Like.create!(
  author: author2,
  post: post2
)
