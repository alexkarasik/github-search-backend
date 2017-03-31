# User Stories

-As a user, I want to have a secure sign-in.
-As a user, I want to add repositories to the backend database.
-As a user, I want to add repsoitories to a favorites list.
-As a user, I want to delete searched repsoitories from a favorites list.

# API routes
searches GET    /searches(.:format)             searches#index
         search GET    /searches/:id(.:format)         searches#show
bookmarked_repos GET    /bookmarked_repos(.:format)     bookmarked_repos#index
                POST   /bookmarked_repos(.:format)     bookmarked_repos#create
bookmarked_repo GET    /bookmarked_repos/:id(.:format) bookmarked_repos#show
                PATCH  /bookmarked_repos/:id(.:format) bookmarked_repos#update
                PUT    /bookmarked_repos/:id(.:format) bookmarked_repos#update
                DELETE /bookmarked_repos/:id(.:format) bookmarked_repos#destroy
          repos GET    /repos(.:format)                repos#index
                POST   /repos(.:format)                repos#create
           repo GET    /repos/:id(.:format)            repos#show
                PATCH  /repos/:id(.:format)            repos#update
                PUT    /repos/:id(.:format)            repos#update
                DELETE /repos/:id(.:format)            repos#destroy
                POST   /search(.:format)               practices#search_github
        sign_up POST   /sign-up(.:format)              users#signup
        sign_in POST   /sign-in(.:format)              users#signin
                DELETE /sign-out/:id(.:format)         users#signout
                PATCH  /change-password/:id(.:format)  users#changepw
          users GET    /users(.:format)                users#index
           user GET    /users/:id(.:format)            users#show


# ERD

https://i.imgur.com/nNY0FIX.jpg

# First Wireframe

https://i.imgur.com/ebf3nJu.jpg

## LINK TO DEPLOYED SITE
https://alexkarasik.github.io/github-search/

## LINK TO FRONT END
https://github.com/alexkarasik/github-search

## LINK TO BACK END
https://github.com/alexkarasik/github-search-backend

## General approach
I was more familiar with the backend workflow thanks to the second project, but I still was not entirely comfortable with it. I scaffolded the two main added resources, bookmarked_repos and repos. boomarked_repos was part of a join table

## Unsolved Problems
I want to create comments and give them CRUD capabilities. I did not have enough time to get around to that, but I will accomplsih this soon.
I also would have liked to add a CRUDable list resource so that users can add different repsoitories to different lists of their own creation to better organize their repositories.

## Technologies Used
For this project, I Used Rails for the backend. It has scripts for the main resources: Users, favorited_repos and Repos.
The User clicks an "Add to Favorites" button on the front end, that is designed to add the given data from the Github 3rd Party API to a users' own personal database of their favorite github respitories.
This was my first time using a 3rd party API and I found it to be very challenging, but it also opened my eyes to the possibilities of using public APIs for other possible projects in the future.
