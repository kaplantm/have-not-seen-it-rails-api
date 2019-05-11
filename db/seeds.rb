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

The_Shawshank_Redemption = Movie.create(
  title: "The Shawshank Redemption",
  releaseDate: "1994-08-14",
  posterUrl: "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg"
)

The_Shawshank_Redemption.summaries.create(content: "It's a movie about a prisoner, who learns to shoot hope through his nipples.")
The_Shawshank_Redemption.summaries.create(content: "Man screams at sky after being underground a bit.")
The_Shawshank_Redemption.summaries.create(content: "Prisoner man is set free after years of trying to unfuck himself")
The_Shawshank_Redemption.summaries.create(content: "A man desperately tries to find his way inside before his cloths get too wet.")
The_Shawshank_Redemption.summaries.create(content: "is this waterworld? all i can think of is waterworld")
The_Shawshank_Redemption.summaries.create(content: "A man go through great lengths to go outside to stand in the rain")
The_Shawshank_Redemption.summaries.create(content: "The tunnel of shit is a metaphor, apparently.")
# The_Shawshank_Redemption.summaries.create(content: "")