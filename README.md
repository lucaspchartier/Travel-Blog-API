# Travel Blog API

### What it does
This is a travel-themed application where an authenticated user can add and
compile a list of hotels that they've traveled to in their lifetime. This
application should get users to give into the urge to travel more and explore
some authentic places that they want to travel to!

### Links
* [Travel Blog Client](https://github.com/lucaspchartier/Travel-Blog-Client)
* [Deployed Heroku](https://intense-sea-84286.herokuapp.com/)
* [Deployed Client](https://lucaspchartier.github.io/Travel-Blog-Client/)

### List of technologies used
* Ruby on Rails
* PostgreSQL

### Unsolved problems for future entities
As of right now, I have not discovered any outstanding and critical bugs that
hinder the functionality of this application. On the other hand, given that
this is a travel-themed application, I do want to create another table in rails
where a user can have many flights that include an airline, a flight number, a
departing destination, and an arriving destination. Furthermore, I do want to
include a Google Maps/Location API within the application so that the location
of the hotel shows on the user's list of hotels, as well as potentially
incorporating a 3rd party travel API (i.e. TripAdvisor, Expedia) to include
various airlines for the flight that the user adds to their list.

### Planning, process, and problem-solving strategies
Within the first day of project week, I was already drawing out my wireframes
and designing my ERDs, and I was also able to accomplish creating a single
hotels table under user in Rails. After getting all of my curl scripts to work
in my back end, I then decided to focus all of my attention to getting my front
end fully functional using React. While navigating through each component and
fully rendering each one was a bit of a challenge, since I am fairly new to
React after, all, I used previous React lessons from the week before as a guide
to make sure I had all of my states correct, that nothing was causing a
component to crash, etc. I also embraced the beauty of the issue cue, where
instructors would guide me to very minor things in my code that caused the
client to break, such as missing `hotel` in a particular state while having
something else in its place.

### ERDs
![ERDs](https://i.imgur.com/a5d2wSk.png)

### API Routes
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out`            | `users#signout`   |
| PATCH  | `/change-password`     | `users#changepw`  |
| POST   | `/hotels`              | `hotels#create`   |
| GET    | `/hotels`              | `hotels#index`    |
| GET    | `/hotels/:id`          | `hotels#show`     |
| PATCH  | `/hotels/:id`          | `hotels#update`   |
| DELETE | `/hotels/:id`          | `hotels#delete`   |

### Set up and installation instructions
1. Fork and clone this repository
2. Change into new directory
3. Create and checkout to your own branch
4. Install dependencies with `bundle install`
