# CS52 Preprocessors Workshop (Coffeescript & Flow)

Hi everyone!  Welcome to the CS52 workshop on preprocessors, with a focus on *CoffeeScript* and *Flow*.  Here, you will learn the basics of using both by...

:rocket: Creating AND debugging a simple game of Tic-Tac-Toe!  

(Debugging might make you :running: right now, follow this workshop and you will be :metal:)

# What are preprocessors?

Preprocessors are programs that takes in data and outputs it into a form that can be read by another, more common program.  In this case, there are many preprocessors for JavaScript that make the language more efficient and less buggy.  

*CoffeeScript* is JavaScript but :punch: better :punch: - or at least, it's supposed to be!  It is:

- **Faster and more efficient** - comparing a CoffeeScript file to the JavaScript it outputs, the former saves 33% to 50% of characters to be typed.
- Seamlessly **connects to any existing JavaScript library**.
- **Compiles one to one** to the equivalent JS
- Results in **less errors** (e.g. variables are auto-scoped, so you won't be overwriting global variables by omitting `var`)

*Flow* uses data flow analysis to :running: follow :running: you in your code writing, pointing out errors as you go.  Like your parents, but more helpful! :information_desk_person:  

It works incrementally, meaning you can add it file-by-file instead of jumping right into the deep end of the pool.  

## Clone the Repo!
To start off, clone this repo - you should already know how to do that, but if not, just `git clone [HTTPS for this repo.]`

Now, you should have the base code for the game we are going to make!  Some parts will be left out, marked by comments that say `TO-DO:` - you'll be filling in those lines of code as you move through this workshop.

## Setting up Flow
Instead of doing its own thing, Flow works on top of existing ecosystems.  In our case, we'll have it work in conjunction with Babel, as Babel will take Flow code and strip out *type annotations*.  

We won't be doing too much with Flow other than setting it up (it works with vanilla JS, so integration with CoffeeScript would require messing with the output JS after compilation.)

## Getting started with CoffeeScript
It's pretty easy to install CoffeeScript: `npm install -g coffee-script` will get you the latest edition.  Run the command `coffee -v` to check your download.  Good?  Let's go!

CoffeeScript files have the extension of `.coffee` and compile into `.js`.  

#### Cool Commands
`coffee -o javascripts/ -c coffeescripts/` will compile all the files in the folder 'coffeescripts' and output them into a folder 'javascripts'.  **Don't switch the order of -o and -c!**


## Tic-Tac-Toe Game

## And You're Done!
At this point you should have ...
- [ ] Set up flow
- [ ] Started with CoffeeScript
- [ ] Worked your way through the Tic-Tac-Toe game
- [ ] Understand how these programs work the way they do!

## Credits
Tic-tac-toe modified from http://www.sitepoint.com/practical-coffeescript-tic-tac-toe
