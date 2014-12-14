# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

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
user4_follower_of_user3 = Follow.create(follower_id:user4.id , followed_id:user3.id)

# TWIBS
twib1  = Tweet.create(user_id: user1.id, content: "I'm feeling soooooo angry today, my laptop don't want to boot", created_at: Time.now-3.days)
twib2  = Tweet.create(user_id: user1.id, content: "50% off ! Just bought +4gb RAM", created_at: Time.now-2.days)
twib3  = Tweet.create(user_id: user1.id, content: "Thank you Black Friday :D", created_at: Time.now-1.day-10.hours)
twib4  = Tweet.create(user_id: user1.id, content: "Illustrator just crashed.. F**king Adobe !", created_at: Time.now-20.hours)
twib5  = Tweet.create(user_id: user1.id, content: "You're such a baby. Stop Rage Quitting.", created_at: Time.now-8.minutes)

twib6  = Tweet.create(user_id: user2.id, content: "Stupid hacker got a nuke, didn't need to stick around.", created_at: Time.now-1.days-18.hours)
twib7  = Tweet.create(user_id: user2.id, content: "Aw man, fuck this shit!", created_at: Time.now-1.days-16.hours)
twib8  = Tweet.create(user_id: user2.id, content: "Today, I came home to find out my roommate sold my PS4, because, 'You don't use it anymore.'", created_at: Time.now-2.minutes)

twib9  = Tweet.create(user_id: user3.id, content: "My boyfriend sent Christmas Carollers to my house to tell me he was breaking up with me.", created_at: Time.now- 5.days - 18.hours)
twib10 = Tweet.create(user_id: user3.id, content: "I went on a date with a girl who had to cut our date short so she could go on another one.", created_at: Time.now- 2.days)
twib11 = Tweet.create(user_id: user3.id, content: "I fell asleep on the couch and woke up to find that I had slept through my house getting robbed.", created_at: Time.now- 1.days - 18.hours)

twib12 = Tweet.create(user_id: user4.id, content: "my son told me the Christmas letter he wrote to Santa was a joke and he didn't want the stuff he asked for. I already bought everything.", created_at: Time.now- 1.days - 18.hours)
twib13 = Tweet.create(user_id: user4.id, content: "I finally found my passport. The day after my flight took off and left me behind.", created_at: Time.now- 2.hours)

twib14 = Tweet.create(user_id: user5.id, content: "Today, it's the last night before a concert. Today is also the day my brother pawned my clarinet for drug money.", created_at: Time.now-1.hour)
twib15 = Tweet.create(user_id: user5.id, content: "I confessed to my roommate of 4 years that I'm in love with her. Her response? Sticking her tongue out at me and blowing a raspberry.", created_at: Time.now- 18.minutes)

# FAVORITES
Favorite.create(user_id: user2.id , tweet_id:twib1.id)
Favorite.create(user_id: user3.id , tweet_id:twib1.id)
Favorite.create(user_id: user4.id , tweet_id:twib1.id)
Favorite.create(user_id: user5.id , tweet_id:twib1.id)

Favorite.create(user_id: user2.id , tweet_id:twib2.id)
Favorite.create(user_id: user3.id , tweet_id:twib2.id)
Favorite.create(user_id: user4.id , tweet_id:twib2.id)

Favorite.create(user_id: user2.id , tweet_id:twib3.id)

Favorite.create(user_id: user2.id , tweet_id:twib4.id)
Favorite.create(user_id: user3.id , tweet_id:twib4.id)
Favorite.create(user_id: user3.id , tweet_id:twib4.id)

Favorite.create(user_id: user3.id , tweet_id:twib5.id)
Favorite.create(user_id: user4.id , tweet_id:twib6.id)
Favorite.create(user_id: user4.id , tweet_id:twib7.id)
Favorite.create(user_id: user5.id , tweet_id:twib8.id)
Favorite.create(user_id: user5.id , tweet_id:twib9.id)
Favorite.create(user_id: user1.id , tweet_id:twib10.id)
Favorite.create(user_id: user1.id , tweet_id:twib14.id)
Favorite.create(user_id: user1.id , tweet_id:twib15.id)
Favorite.create(user_id: user2.id , tweet_id:twib15.id)





