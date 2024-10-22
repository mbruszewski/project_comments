# General info

App contains basic project management solution which allows users adding comments to a project. For each project we can add comments and edit it.

# Start the app

## 1. Download the repo

## 2. Install all packages
Example:
```
# if you don't have already ruby 3.3.5, install it
rvm install 3.3.5
# create gemset, if already created skip this
rvm gemset create project_comments
# use gemset
rvm gemset use project_comments
# install gems
bundle install
```

## 3. Run the project

```
rails s
```
Now you can access the website through:
```
localhost:3000
```

# Possible questions before project

## 1. What are the tools (deployment server, database) ?

Let's say heroku + PostgreSQL for later. For local changes we can use sqlite.

## 2. Only projects will have comments ? Can we comment comments ?

For now we can only add comments for project, but we should make it extendable.

## 3. Should we paginate comments? What is the number of comments ?

For now let's don't do this.

## 4. Do we want some admin panel?

Not needed for now.

## 5. How people will create project ? Do they need to sign up ?

It will just be a form they need to fill, without signing up. They provide something like username, project name, start date and end date.

## 6. When we already know what project need to have in terms of fields/data, what should have comment ?

Comment need just username and text.

## 7. Does project need to have status? How to we manage statuses (state machine or just a list) ?

Project need to have status, let's say for now it will have only: new, pending, cancelled, finished. For now let's just do a dropdown in a form, we don't need state machine.



