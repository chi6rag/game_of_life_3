Game Of Life
============

The Game of Life, also known simply as Life, is a cellular automaton game
developed by the British mathematician John Horton Conway in 1970.
This is a programmatic application of the same.

The universe of the Game of Life is an infinite two-dimensional orthogonal
grid of square cells, each of which is in one of two possible states, alive
or dead. Every cell interacts with its eight neighbours, which are the cells
that are horizontally, vertically, or diagonally adjacent. At each step in
time, the following transitions occur:

- Any live cell with fewer than two live neighbours dies, as if caused by
  under-population.
- Any live cell with two or three live neighbours lives on to the next
  generation.
- Any live cell with more than three live neighbours dies, as if by
  over-population.
- Any dead cell with exactly three live neighbours becomes a live cell, as
  if by reproduction.

The initial pattern constitutes the seed of the system. The first generation
is created by applying the above rules simultaneously to every cell in the
seed—births and deaths occur simultaneously, and the discrete moment at which
this happens is sometimes called a tick (in other words, each generation is
a pure function of the preceding one). The rules continue to be applied
repeatedly to create further generations.

Instructions
============

1. Setup for Development (Mac OS X)
 - Clone the repository
 - Install Ruby 2.2 - [See instructions to install Ruby using RVM](https://rvm.io/rvm/install)
 - Install the dependencies using the following command

   ```
   bundle install
   ```

2. Running tests
   - Ensure that you have the development environment setup - See Step 1
   - Run the tests by using the following command

     ```
     bundle exec rspec
     ```