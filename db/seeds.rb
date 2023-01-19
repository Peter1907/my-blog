# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: first_user, title: 'Hello', text: 'Here we go again, weeee!')
third_post = Post.create(author: first_user, title: 'Hello', text: 'Third time is the charm')
fourth_post = Post.create(author: first_user, title: 'Hello', text: 'I am a teacher, who is a teacher?')

Comment.create(post: fourth_post, author: second_user, text: 'Hi Tom!')
Comment.create(post: fourth_post, author: second_user, text: 'Hello Tom!')
Comment.create(post: fourth_post, author: second_user, text: 'Wassup Tom!')
Comment.create(post: fourth_post, author: second_user, text: 'Hola Tom!')
Comment.create(post: fourth_post, author: second_user, text: 'Bonjour Tom!')
Comment.create(post: fourth_post, author: second_user, text: 'Goodbye Tom!')
