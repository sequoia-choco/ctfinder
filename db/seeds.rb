# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'securerandom'

# users_size = 50
# # users
# 50.times do |n|
#     user = User.create(
#         name: SecureRandom.alphanumeric(rand(3..10)), 
#         email: SecureRandom.alphanumeric(rand(10..20)) + "@gmail.com", 
#         password: "tintin1", 
#         web: rand(1..5),
#         crypto: rand(1..5),
#         reversing: rand(1..5),
#         pwn: rand(1..5),
#         misc: rand(1..5),
#         self_introduction: "俺がナンバーワンだ！"
#     )
#     user.image.attach(
#         io: File.open(Rails.root.join("public/user#{rand(0..9)}.png")),
#         filename: 'default_user.png'
#     )
# end
user = User.create(
            name: "John", 
            email: SecureRandom.alphanumeric(rand(10..20)) + "@gmail.com", 
            password: "tintin1", 
            web: rand(1..5),
            crypto: rand(1..5),
            reversing: rand(1..5),
            pwn: rand(1..5),
            misc: rand(1..5),
            self_introduction: "I'm a beginner"
        )
        user.image.attach(
            io: File.open(Rails.root.join("public/user#{rand(0..9)}.png")),
            filename: 'default_user.png'
        )
user = User.create(
            name: "Tom", 
            email: SecureRandom.alphanumeric(rand(10..20)) + "@gmail.com", 
            password: "tintin1", 
            web: rand(1..5),
            crypto: rand(1..5),
            reversing: rand(1..5),
            pwn: rand(1..5),
            misc: rand(1..5),
            self_introduction: "looking for pwn player"
        )
        user.image.attach(
            io: File.open(Rails.root.join("public/user#{rand(0..9)}.png")),
            filename: 'default_user.png'
        )
user = User.create(
            name: "Alice", 
            email: SecureRandom.alphanumeric(rand(10..20)) + "@gmail.com", 
            password: "tintin1", 
            web: rand(1..5),
            crypto: rand(1..5),
            reversing: rand(1..5),
            pwn: rand(1..5),
            misc: rand(1..5),
            self_introduction: "Let's have fun!"
        )
        user.image.attach(
            io: File.open(Rails.root.join("public/user#{rand(0..9)}.png")),
            filename: 'default_user.png'
        )
user = User.create(
            name: "Josh", 
            email: SecureRandom.alphanumeric(rand(10..20)) + "@gmail.com", 
            password: "tintin1", 
            web: rand(1..5),
            crypto: rand(1..5),
            reversing: rand(1..5),
            pwn: rand(1..5),
            misc: rand(1..5),
            self_introduction: "I'm good at crypto"
        )
        user.image.attach(
            io: File.open(Rails.root.join("public/user#{rand(0..9)}.png")),
            filename: 'default_user.png'
        )
user = User.create(
            name: "Kane", 
            email: SecureRandom.alphanumeric(rand(10..20)) + "@gmail.com", 
            password: "tintin1", 
            web: rand(1..5),
            crypto: rand(1..5),
            reversing: rand(1..5),
            pwn: rand(1..5),
            misc: rand(1..5),
            self_introduction: "Thank you!"
        )
        user.image.attach(
            io: File.open(Rails.root.join("public/user#{rand(0..9)}.png")),
            filename: 'default_user.png'
        )
user = User.create(
            name: "Son", 
            email: SecureRandom.alphanumeric(rand(10..20)) + "@gmail.com", 
            password: "tintin1", 
            web: rand(1..5),
            crypto: rand(1..5),
            reversing: rand(1..5),
            pwn: rand(1..5),
            misc: rand(1..5),
            self_introduction: "from Asia!"
        )
        user.image.attach(
            io: File.open(Rails.root.join("public/user#{rand(0..9)}.png")),
            filename: 'default_user.png'
        )
user = User.create(
            name: "James", 
            email: SecureRandom.alphanumeric(rand(10..20)) + "@gmail.com", 
            password: "tintin1", 
            web: rand(1..5),
            crypto: rand(1..5),
            reversing: rand(1..5),
            pwn: rand(1..5),
            misc: rand(1..5),
            self_introduction: "want to become No.1"
        )
        user.image.attach(
            io: File.open(Rails.root.join("public/user#{rand(0..9)}.png")),
            filename: 'default_user.png'
        )
user = User.create(
            name: "Bob", 
            email: SecureRandom.alphanumeric(rand(10..20)) + "@gmail.com", 
            password: "tintin1", 
            web: rand(1..5),
            crypto: rand(1..5),
            reversing: rand(1..5),
            pwn: rand(1..5),
            misc: rand(1..5),
            self_introduction: "can you help me?"
        )
        user.image.attach(
            io: File.open(Rails.root.join("public/user#{rand(0..9)}.png")),
            filename: 'default_user.png'
        )

    user = User.create(
            name: "bill", 
            email: SecureRandom.alphanumeric(rand(10..20)) + "@gmail.com", 
            password: "tintin1", 
            web: rand(1..5),
            crypto: rand(1..5),
            reversing: rand(1..5),
            pwn: rand(1..5),
            misc: rand(1..5),
            self_introduction: "send me DM freely!"
        )
        user.image.attach(
            io: File.open(Rails.root.join("public/user#{rand(0..9)}.png")),
            filename: 'default_user.png'
        )
# tournaments
# 20.times do |n|
#     Tournament.create!(
#         name: SecureRandom.alphanumeric(rand(10..20)), 
#         date: Time.parse('2020-01-01 12:00:00')
#     )
# end

Tournament.create!(
    name: "Nara CTF", 
    date: Time.parse('2020-01-01 12:00:00')
)


Tournament.create!(
    name: "Deer CTF", 
    date: Time.parse('2020-01-01 15:00:00')
)


Tournament.create!(
    name: "Senbei CTF", 
    date: Time.parse('2020-01-03 11:00:00')
)

Tournament.create!(
    name: "World CTF", 
    date: Time.parse('2020-01-02 10:00:00')
)

Tournament.create!(
    name: "Beginner's CTF", 
    date: Time.parse('2020-01-01 19:00:00')
)
# # participants
# users = User.all.sample(20)
# tournaments = Tournament.all.sample(20)
# 20.times do |n|
#     Participant.create!(
#         user: users[n],
#         name: users[n].name,
#         tournament: tournaments[n]
#     )
#     if n < 10
#         if RecentAction.where(user: users[n]).exists?
#             RecentAction.find_by(user: users[n]).destroy
#         end
#         RecentAction.create!(
#             action: 2,
#             user: users[n],
#             tournament: tournaments[n]
#         )

#     end
# end

# # posts
# participants = Participant.includes(:tournament, :user).sample(10)
# 10.times do |n|
#     Post.create!(
#         participant: participants[n], 
#         tournament: participants[n].tournament,
#         content: SecureRandom.alphanumeric(rand(1..140))
#     )
#     user = participants[n].user
#     if RecentAction.where(user: user).exists?
#         RecentAction.find_by(user: user).destroy
#     end
#     RecentAction.create!(
#         action: 1,
#         user: user,
#         tournament: participants[n].tournament
#     )
# end

# # likes
# user_ids = []
# 20.times do |n|
#     user_ids.push(n)
# end
# users = User.where(id: [user_ids])
# 10.times do |n|
#     Like.create!(
#         liker: users[n+1],
#         liked: users[n+2]
#     )
# end
# 10.times do |n|
#     Like.create!(
#         liker: users[n+2],
#         liked: users[n+1]
#     )
# end

# # matching
# 10.times do |n|
#     Matching.create!(
#         user1: users[n+1],
#         user2: users[n+2]
#     )
# end

# # direct_message
# matching = Matching.all.sample(10)
# 10.times do |n|
#     DirectMessage.create!(
#         matching: matching[n],
#         sender: [matching[n].user1, matching[n].user2].sample(1)[0],
#         content: SecureRandom.alphanumeric(rand(1..140))
#     )
# end