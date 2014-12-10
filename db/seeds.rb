# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.create(email: 'user1@twiby.fr', username:'Augustin',   password:'123456789')
user2 = User.create(email: 'user2@twiby.fr', username:'Florent',    password:'123456789')
user3 = User.create(email: 'user3@twiby.fr', username:'Alexandre',  password:'123456789')
user4 = User.create(email: 'user4@twiby.fr', username:'Sylvain',    password:'123456789')
user5 = User.create(email: 'user5@twiby.fr', username:'Audrey',     password:'123456789')

# TOUS SUIVENT USER1 (AUGUSTIN)
user2_follower_of_user1 = Follow.create(follower_id:user2.id , followed_id:user1.id)
user3_follower_of_user1 = Follow.create(follower_id:user3.id , followed_id:user1.id)
user4_follower_of_user1 = Follow.create(follower_id:user4.id , followed_id:user1.id)
user5_follower_of_user1 = Follow.create(follower_id:user5.id , followed_id:user1.id)

# USER1 (AUGUSTIN) SUIT USER5 (AUDREY)
user1_follower_of_user5 = Follow.create(follower_id:user1.id , followed_id:user5.id)

# USER2 et USER4 (FLORENT ET SYLVAIN) SUIVENT USER3 (ALEX)
user2_follower_of_user3 = Follow.create(follower_id:user2.id , followed_id:user3.id)
user4_follower_of_user3 = Follow.create(follower_id:user2.id , followed_id:user3.id)



