# AceBook

## Deployed App can be found [here](https://makers-acebook-creators.herokuapp.com/)

REQUIRED INSTRUCTIONS:

1. Fork this repository to `acebook-teamname` and customize
the below**

[You can find the engineering project outline here.](https://github.com/makersacademy/course/tree/master/engineering_projects/rails)

2. The card wall is here: https://trello.com/b/qGXi1GtK/acebook

## How to contribute to this project
See [CONTRIBUTING.md](CONTRIBUTING.md)

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```
### To run code quality checks, type the following commands from console:
more infos: https://github.com/whitesmith/rubycritic
```
rubycritic --no-browser
```
more infos: https://github.com/flyerhzm/rails_best_practices
```
rails_best_practices .
```
```
rubocop
```


## Link to our process documentation
See https://docs.google.com/document/d/1-bv7yLO38CKlP1r0C1-qqpVL5H6gtalqZolHUrqKgyo/edit

## Tools used for this project

* Heroku for deployment
* Codeship for CI/CD

### SimpleCov - Provides Test coverage stats
* Gems used
```simplecov```
``` simplecov-console```
* It will run automatically every time the tests are run by running -
```bundle exec rspec```
* Check the results in ./coverage/index.html or on the console
* Remember to add /coverage to the .gitignore if it is not already there so that the test coverage stats don't get added to git.
* More info here - https://github.com/colszowka/simplecov

## Photo credits

* [Helena Lopes on Unsplash](https://unsplash.com/photos/PGnqT0rXWLs)
* [Ivana Cajina on Unsplash](https://unsplash.com/photos/7JWXbeBB4gY)
* [Mike Erskine on Unsplash](https://unsplash.com/photos/S_VbdMTsdiA)
* [Felix Rostig on Unsplash](https://unsplash.com/photos/UmV2wr-Vbq8)
* [Nick Abrams on Unsplash](https://unsplash.com/photos/IKtdqKatKPk)
