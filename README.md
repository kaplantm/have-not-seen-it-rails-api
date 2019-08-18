# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

Notes:
rake db:seed
rake db:reset db:migrate
https://github.com/Netflix/fast_jsonapi
https://driggl.com/blog/a/from-activemodel-serializers-to-fast-jsonapi
https://itnext.io/a-quickstart-guide-to-using-serializer-with-your-ruby-on-rails-api-d5052dea52c5


Queries summaries for ones with/ more than x movie choices
http://localhost:3000/api/summaries?page=1&minChoices=3&page=1&pageSize=10

http://localhost:3000/api/summaries?page=1&minChoices=3&limitChoices=3&page=1&pageSize=10&includeChoices=1

For each question, query movies for wrong choices
http://localhost:3000/api/movies?movie_ids=[1,2,3]


an alternative to consider:
https://medium.com/@stellamarisnjage/serializing-deeply-nested-associations-in-rails-2173d588c528