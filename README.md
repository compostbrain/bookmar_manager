# Bookmark Manager App

Key Requirements:

## Model
- X Bookmark
- X Topic
- X User

## Features
- X As a user, I want to sign up for a free account by providing a user name, password and email
- X As a user, I want to sign in and out of Blocmarks
- As a user, I want to email a URL to Blocmarks and have it saved in the Blocmarks database
- X As a user, I want to see an index of all topics and their bookmarks
- X Allow users to create and destroy topics from the topics index view.
- X Clicking on a topic should take the user to that topic's show view and display only those bookmarks which belong to it
- As a user, I want to create, read, update, and delete bookmarks
- As a user, I want to be the only one allowed to delete and update my bookmarks
- As a user, I want to "like and unlike" bookmarks created by other users
- As a user, I want to see a list of bookmarks on my personal profile that I've added or liked

## UI
- Bootstrap -> formatting

## Refactor To-do's
- X Add user name to User Model
- Fix sign-in view to only require email and password
- X Show username in dashboard homepage view
- Fix signup confirm alert
- Paginate topics#index
- Fix position on page for topic destroy action
- finish feature tests for topic#show and #index

## Init Procedure
```
$ createuser --createdb --login -P bookmark```

* Database initialization
modify config/database.yml to include username and password under host
run:
bin/rails db:create
bin/rails db:migrate
