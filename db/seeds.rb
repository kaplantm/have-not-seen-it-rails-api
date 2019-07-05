# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

# The Shawshank Redemption (1994)
# The Godfather (1972)
# The Dark Knight (2008)
# The Godfather: Part II (1974)
# The Lord of the Rings: The Return of the King (2003)
# Pulp Fiction (1994)
# Schindler's List (1993)
# The Good, the Bad and the Ugly (1966)
# 12 Angry Men (1957)
# Avengers: Endgame (2019)
# Inception (2010)
# Fight Club (1999)
# The Lord of the Rings: The Fellowship of the Ring (2001)
# Forrest Gump (1994)
# The Lord of the Rings: The Two Towers (2002)
# The Matrix (1999)
# Goodfellas (1990)
# Star Wars: Episode V - The Empire Strikes Back (1980)
# One Flew Over the Cuckoo's Nest (1975)
# Seven Samurai (1954)

# The_Shawshank_Redemption = Movie.create(
#   title: "The Shawshank Redemption",
#   releaseDate: "1994-08-14",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg"
# )
# The_Shawshank_Redemption_Summaries = [
#     "It's a movie about a prisoner, who learns to shoot hope through his nipples.",
#     "Man screams at sky after being underground a bit.",
#     "Prisoner man is set free after years of trying to unfuck himself",
#     "A man desperately tries to find his way inside before his cloths get too wet.",
#     "is this waterworld? all i can think of is waterworld",
#     "A man go through great lengths to go outside to stand in the rain",
#     "The tunnel of shit is a metaphor, apparently."
# ]
# The_Shawshank_Redemption_Summaries.each { |summary| puts The_Shawshank_Redemption.summaries.create(content: summary) }


# Twelve_Angry_Men = Movie.create(
#   title: "12 Angry Men",
#   releaseDate: "1957-04-10",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,649,1000_AL_.jpg"
# )
# Twelve_Angry_Men_Summaries = [
#     "A bunch of guys talk about a death and whose fault it is.",
#     "Man kills 12 people with squiggly knife of doom",
#     "Numerous men are having a fit",
#     "A bunch of guys yell at eachother for like two hours",
# ]
# Twelve_Angry_Men_Summaries.each { |summary| puts Twelve_Angry_Men.summaries.create(content: summary) }

# Seven_Samurai = Movie.create(
#   title: "Seven Samurai",
#   releaseDate: "1956-11-19",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BN2RhYzQ2YTUtYzk0Yy00MTc2LThjNDQtNGVkMDkzNzZiYjVhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_CR0,0,666,1000_AL_.jpg"
# )
# Seven_Samurai_Summaries = [
#     "It’s time to solve all our problems with cool fights to the death like MEN",
#     "Samurai slowly erases everything in the world until only his screaming face is left.",
#     "crazy man can't stop screaming",
#     "He’s seeking vengeance. But also a waxing salon for his unibrow.",
# ]
# Seven_Samurai_Summaries.each { |summary| puts Seven_Samurai.summaries.create(content: summary) }


# Avengers_Endgame = Movie.create(
#   title: "Avengers: Endgame",
#   releaseDate: "2019-04-26",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SY1000_CR0,0,674,1000_AL_.jpg"
# )
# Avengers_Endgame_Summaries = [
#     "22 movies later and they are still fighting the purple space gorilla.",
#     "Large ensemble team falls over each other to prevent Ant Man from crawling up Thanos's ass. They aren't successful.",
#     "Purple guy fists everyone out of existence",
#     "Good guys make bad guys say oof ouch owie",
#     "A group of friends seek to undo the life's work of a purple, bald man who seeked to solve the universes problems using some pebbles and a glove. ",
#     "Superheroes try to defeat the bad guy and save the world",
#     "a group of oddly attractive people with severe genetic abnormalities unite, fight, pal around, become romantically involved, and repeatedly save the world.",
# ]
# Avengers_Endgame_Summaries.each { |summary| puts Avengers_Endgame.summaries.create(content: summary) }


# Lotr_rotk = Movie.create(
#   title: "The Lord of the Rings: The Return of the King",
#   releaseDate: "2003-12-17",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,675,1000_AL_.jpg"
# )
# Lotr_rotk_Summaries = [
#     "Little people try to throw a ring into a volcano.",
#     "A big fuss about some tacky jewellery",
#     "not enough giant bugs, don't recommend",
#     "A man goes on a journey to return a piece of jewelry to its manufacturer.",
#     "Too long; Didn't Watch",
#     "Nerd characters try to throw an unwanted ring into a volcano, take 3 1/2 hours to do so when they could just fly",
# ]
# Lotr_rotk_Summaries.each { |summary| puts Lotr_rotk.summaries.create(content: summary) }

# Forrest_Gump = Movie.create(
#   title: "Forrest Gump",
#   releaseDate: "1994-07-06",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg"
# )
# Forrest_Gump_Summaries = [
#     "Man is at every turning point in history, very improbably.",
#     "guy does a lot of activities ",
#     "The luckiest man in the world photobombs his way through wars, politics, and travelling to the moon.",
#     "some say he is still running to this day",
# ]
# Forrest_Gump_Summaries.each { |summary| puts Forrest_Gump.summaries.create(content: summary) }

# The_Good_the_Bad_and_the_Ugly= Movie.create(
#   title: "The Good, the Bad and the Ugly",
#   releaseDate: "1967-12-29",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BOTQ5NDI3MTI4MF5BMl5BanBnXkFtZTgwNDQ4ODE5MDE@._V1_SY1000_CR0,0,656,1000_AL_.jpg"
# )
# The_Good_the_Bad_and_the_Ugly_Summaries = [
#     "Three guys are having a staring competition to find out, who can stare the meanest.",
#     "Clint Eastwood stares really mean in this movie.",
#     "Three cowboys have rootin tootin shootin fun.",
#     "In German, the title of this movie translates to two fabulous hooligans, even though there are three titular characters. it's because one of the characters is a good guy, and therefore not a hooligan.",
#     "Hats! Everybody's wearing them in this movie. The great, the awful, the unattractive, this film has em all! Hats!",
# ]
# The_Good_the_Bad_and_the_Ugly_Summaries.each { |summary| puts The_Good_the_Bad_and_the_Ugly.summaries.create(content: summary) }

# Goodfellas = Movie.create(
#   title: "Goodfellas",
#   releaseDate: "1990-09-21",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX667_CR0,0,667,999_AL_.jpg"
# )
# Goodfellas_Summaries = [
#     "they loom ominously.",
#     "Three mafia guys look over a city. \"Oh no,\" says one mafia guy, \"there's a dead body on the road!\"",
#     "A man wakes up with two extra heads growing out of his shoulders. He tries to use this to his advantage in this career as a hired assassin.",
#     "ooo spoopy smarmy men are so boring that they suck the color out of the world",
#     "Gangsters! There are probably guns and murders! The mob! Honestly that's the best I can do.",
#     "Three guys look like they want to hurt you",
# ]
# Goodfellas_Summaries.each { |summary| puts Goodfellas.summaries.create(content: summary) }

# Inception= Movie.create(
#   title: "Inception",
#   releaseDate: "2010-07-16",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg"
# )
# Inception_Summaries = [
#     "Bendy world is all an illusion ",
#     "i am confused",
#     "*vague inception noises*",
#     "It’s the matrix but instead of waking up, the protagonist falls asleep.",
#     "I didn't understand it but it was exciting",
#     "This experimental film is mostly just watching people sleep, but was a huge box office hit.",
# ]
# Inception_Summaries.each { |summary| puts Inception.summaries.create(content: summary) }

# Pulp_Fiction= Movie.create(
#   title: "Pulp Fiction",
#   releaseDate: "1994-10-14",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,686,1000_AL_.jpg"
# )
# Pulp_Fiction_Summaries = [
#     "This family movie follows two best friends on their wacky adventures during work. Watch them help a struggling boxer, find the briefcase their boss forgot, and stop a robbery.",
#     "A woman shoots anyone who tells her that black hair isn't her colour.",
#     "Lady with an edgy look likes to dance with scientologists, and overdoses on drugs.",
#     "Sometimes you and a buddy just have the wildest fucking day.",
#     "Two cool dudes shoot guns, motherfucker.",
#     "A man is cursed. Every time he uses the bathroom, all hell breaks loose. Unfortunately, he has to use the bathroom fairly often.",
# ]
# Pulp_Fiction_Summaries.each { |summary| puts Pulp_Fiction.summaries.create(content: summary) }

# One_Flew_Over_the_Cuckoos_Nest= Movie.create(
#   title: "One Flew Over the Cuckoo's Nest",
#   releaseDate: "1975-11-19",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SY1000_CR0,0,672,1000_AL_.jpg"
# )
# One_Flew_Over_the_Cuckoos_Nest_Summaries = [
#     "Heartwarming story of a man happy to finally be given a hat- it's a cold world in there.",
#     "something about jail. maybe they see a plane in the sky and theyre like woah a plane",
#     "It's rarely cheaper, shorter, or safer to fake a mental disability to get out of a crime",
#     "Main character goes to a mental institution where he meets Danny Devito and other oddballs.",
# ]
# One_Flew_Over_the_Cuckoos_Nest_Summaries.each { |summary| puts One_Flew_Over_the_Cuckoos_Nest.summaries.create(content: summary) }

# The_Godfather= Movie.create(
#   title: "The Godfather",
#   releaseDate: "1972-03-24",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,704,1000_AL_.jpg"
# )
# The_Godfather_Summaries = [
#     "An old italian guy decides to start his own puppet theater, but one of his friends misunderstands it and ends up throwing a horse head on a bed. How this mixup could happen? I don't even know.",
#     "Kooky Italian family plans a wedding with unintended consequences",
#     "Traveling puppeteer finds himself supplanting his loved ones with puppets until he is emotionally isolated. Eventually he gives up his craft and goes home to his family after learning the true meaning of love from a child that watches his terrible puppet shows.",
#     "Take the cannoli.",
#     "Basically mafia game of thrones.",
#     "I'm the Dad now",
# ]
# The_Godfather_Summaries.each { |summary| puts The_Godfather.summaries.create(content: summary) }

# The_Dark_Knight= Movie.create(
#   title: "The Dark Knight",
#   releaseDate: "2008-07-18",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg"
# )
# The_Dark_Knight_Summaries = [
#     "he goes in the bat mobile to beat the joker and safe the city of gotham",
#     "A rich, middle aged man who spends his nights dressed in a bat costume faces an eccentric clown. ",
#     "Let's move somewhere else, honey.  This city is really dark and constantly getting attacked.",
# ]
# The_Dark_Knight_Summaries.each { |summary| puts The_Dark_Knight.summaries.create(content: summary) }


# The_Matrix = Movie.create(
#   title: "The Matrix",
#   releaseDate: "1999-03-31",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,665,1000_AL_.jpg"
# )
# The_Matrix_Summaries = [
#     "the fifth annual meeting of the Cool Shades Club is now in session.",
#     "Putting on sunglasses and a trench coat gives you superpowers",
#     "What if I told you that your whole reality is a lie? Not that I’m going to do that, but what if?",
#     "If you wear anything but black leather and sunglasses they will fucking find you.",
#     "It features the coolest and most attractive looking hackers. Unrealistic.",
# ]
# The_Matrix_Summaries.each { |summary| puts The_Matrix.summaries.create(content: summary) }


# Fight_Club = Movie.create(
#   title: "Fight Club",
#   releaseDate: "1999-10-15",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BMjJmYTNkNmItYjYyZC00MGUxLWJhNWMtZDY4Nzc1MDAwMzU5XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,676,1000_AL_.jpg"
# )
# Fight_Club_Summaries = [
#     "karen did u use my hibiscus and cherry soap again",
#     "idk man haven't heard anything about this movie",
#     "It's all about the soap.",
#     "I'm Jack's Raging Bile Duct",
#     "Brad pit makes the pinkest bars of soap and sells them at his local farmers market.",
#     "i like soap and punching myself in the face.",
# ]
# Fight_Club_Summaries.each { |summary| puts Fight_Club.summaries.create(content: summary) }


# The_Godfather2 = Movie.create(
#   title: "The Godfather: Part II",
#   releaseDate: "1974-12-20",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,701,1000_AL_.jpg"
# )
# The_Godfather2_Summaries = [
#     "i like-a da murder! It goes-a nice with my-a spaghetti!",
#     "More puppet theatre",
#     "A tough guy is being told what to do but thinks it's his idea",
#     "The Goddest Father",
#     "Young guy in fancy clothes has a great time with his family.",
#     "Not as good as the first one, or so I've been told.",
#     "Something about making offers that can’t be refused. And yet more bad Italian accents.",
# ]
# The_Godfather2_Summaries.each { |summary| puts The_Godfather2.summaries.create(content: summary) }



# Lotr_ttt= Movie.create(
#   title: "The Lord of the Rings: The Two Towers",
#   releaseDate: "2002-12-18",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BNGE5MzIyNTAtNWFlMC00NDA2LWJiMjItMjc4Yjg1OWM5NzhhXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,684,1000_AL_.jpg"
# )
# Lotr_ttt_Summaries = [
#     "Lord of the rings rip off",
#     "JFC it's just a stupid ring.",
#     "still walking. no, we aren't there yet",
#     "More.  Fucking.  Hobbits",
# ]
# Lotr_ttt_Summaries.each { |summary| puts Lotr_ttt.summaries.create(content: summary) }



# Schindlers_List= Movie.create(
#   title: "Schindler's List",
#   releaseDate: "1994-02-04",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,666,1000_AL_.jpg"
# )
# Schindlers_List_Summaries = [
#     "Two friends find out about the importance of holding hands during reading a huge list.",
#     "Dude saves people from getting killed by literally the worst person ever to exist.",
#     "don't watch it to cheer yourself up",
#     "too sad don't watch. or do, because history",
#     "This film is the reason I forgave Speilberg for what he did to Jurassic Park.",
# ]
# Schindlers_List_Summaries.each { |summary| puts Schindlers_List.summaries.create(content: summary) }

# Lotr_Fotr = Movie.create(
#   title: "The Lord of the Rings: The Fellowship of the Ring",
#   releaseDate: "2001-12-19",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_SY999_CR0,0,673,999_AL_.jpg"
# )
# Lotr_Fotr_Summaries = [
#     "\"Hey, this isn't Harry Potter!\"",
#     "A group of people who normally don't hang out try to save the universe",
#     "Ethnically diverse band of brothers go on an ill-fated road trip.",
#     "A guy and his gardener go on an adventure",
#     "Old man convinces totally unequipped people to try to save the world, having forgotten to train them for decades",
#     "The first in a series of fantasy movies. Main characters' goals are to get rid of jewelry.",
# ]
# Lotr_Fotr_Summaries.each { |summary| puts Lotr_Fotr.summaries.create(content: summary) }


# Star_Wars_V = Movie.create(
#   title: "Star Wars: Episode V - The Empire Strikes Back",
#   releaseDate: "1980-06-20",
#   posterUrl: "https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,641,1000_AL_.jpg"
# )
# Star_Wars_V_Summaries = [
#     "Couple make smoochie in space",
#     "Guy with daddy issues is forced to face off to the death with his dad using glowsticks",
#     "heterosexuals are at it again. is that a llama? beep-boop",
#     "spaaaaaaace",
#     "People from different planets try to destroy the evil dictator",
#     "It’s a Star War.",
# ]
# Star_Wars_V_Summaries.each { |summary| puts Star_Wars_V.summaries.create(content: summary) }

dirname = File.dirname(__FILE__)

moviesFilePath = File.join(dirname, 'json/movies.json') 
movies = JSON.parse(File.read(moviesFilePath))
movies.each do |movie|
  Movie.create!(movie)
end

summariesFilePath = File.join(dirname, 'json/summaries.json') 
summaries = JSON.parse(File.read(summariesFilePath))
summaries.each do |summary|
  Summary.create!(summary)
end

# questionsFilePath = File.join(dirname, 'json/questions.json') 
# questions = JSON.parse(File.read(questionsFilePath))
# questions.each do |question|
#   Question.create!(question)
# end

# choicesFilePath = File.join(dirname, 'json/choices.json') 
# choices = JSON.parse(File.read(choicesFilePath))
# choices.each do |choice|
#   Choice.create!(choice)
# end