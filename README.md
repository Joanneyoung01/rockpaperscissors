This week I thought the challenge went ok - I approached the problem by breaking down the user stories into HTTP request paths for /get and /post methods. 

The set up was a little shakey (i accidentally overrided a previous repo, hence the amount of commits!) but happy with how the challenge went. As it completes the user stories. I would like to look into why in the Game object, in the result method the computer's move (rock, paper or scissors) is not showing on the results page. Other than that, I am happy with the functionality.  


## RPS Challenge ##
# Instructions #
Challenge time: rest of the day and weekend, until Monday 9am
Feel free to use google, your notes, books, etc. but work on your own
If you refer to the solution of another coach or student, please put a link to that in your README
If you have a partial solution, still check in a partial solution
You must submit a pull request to this repo with your code by 9am Monday morning

# Task #
Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( MAMA ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a Rock, Paper, Scissors game for them so they can play on the web with the following user stories:

# user stories #
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
Hints on functionality

the marketeer should be able to enter their name before the game
the marketeer will be presented the choices (rock, paper and scissors)
the marketeer can choose one option
the game will choose a random option
a winner will be declared
As usual please start by

Forking this repo
TEST driving development of your app

# domain modelling #

Homepage   |  Enters their name 

Greeter    |  Chooses rock, paper or scissors
              Clicks 'submit' button

Game page  | Computer will output a random play, and present result
             Rock > paper
             paper > rock
             scissors > paper 