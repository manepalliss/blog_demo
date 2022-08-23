# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: 'mss@gmail.com',
            password: 'password',
            password_confirmation: 'password',
            name: 'mss',
            role: User.roles[:admin])
User.create(email: 'saisantoshmanepalli@gmail.com',
            password: 'SSAU#199998',
            password_confirmation: 'SSAU#199998',
            name: 'santosh')

10.times do |x|
  post = Post.create(title: "Title #{x}",
                     body: "Body #{x} Words go here Idk",
                     user_id: User.first.id)

  5.times do |y|
    post.comments.create(body: "Comment #{y}",
                   user_id: User.second.id)
  end
end