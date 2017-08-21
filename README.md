# Bookmark Manager App

Key Requirements:

## Models
- X Bookmark
- X Topic
- X User

## Features
- X As a user, I want to sign up for a free account by providing a user name, password and email
- X As a user, I want to sign in and out of Blocmarks
- As a user, I want to email a URL to Blocmarks and have it saved in the Blocmarks database
- As a user, I want to see an index of all topics and their bookmarks
- As a user, I want to create, read, update, and delete bookmarks
- As a user, I want to be the only one allowed to delete and update my bookmarks
- As a user, I want to "like and unlike" bookmarks created by other users
- As a user, I want to see a list of bookmarks on my personal profile that I've added or liked

## UI
- Bootstrap -> formatting

## Refactor To-do's
- X Add user name to User Model
- Fix signup confirm alert

## Init Procedure
$ createuser --createdb --login -P bookmark

* Database initialization
modify config/database.yml to include username and password under host
run:
bin/rails db:create
bin/rails db:migrate
* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
