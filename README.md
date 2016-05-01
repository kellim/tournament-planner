# Tournament Planner
Python module that uses PostgreSQL to keep track of players and matches in a swiss system game tournament

## About the Project
This is a project for Udacity's Full Stack Nanodegree. There are three .py files - `tournament.py`, `tournament.sql`,
and `tournament_test.py`. 
- Udacity provided all code in `tournament_test.py` and skeleton code for `tournament.py`. 
- `tournament.sql` has the code for creating the database, tables, and views.
- `tournament.py` has code that interacts with the database.
- `tournament_test.py` runs tests for this app. 
- Developing a Front-end was not a part of this project.


## Running the project

- To run the project:
- See `https://www.udacity.com/wiki/ud197/install-vagrant` for installing Vagrant and forking the [fullstack-nanodegree-vm respository](https://github.com/udacity/fullstack-nanodegree-vm).
- Replace the contents of `/vagrant/tournament` with the files in this repo.
- Run Vagrant according to the instructions at `https://www.udacity.com/wiki/ud197/install-vagrant` under "Run the virtual machine!"
- Once you are connected to the virtual machine using ssh, `cd` to the `/vagrant/tournament directory`
- Go to the psql command line by entering the command `psql`
- Enter the command `\i tournament.sql` to create the database, tables and views.
- Press `CTRL-D` to exit `psql`.
- Run `python tournament_test.py`  to execute tests.
- You can also go back to the `psql` prompt and type `\c tournament` to connect to the database, and then execute some sql queries. The tables are `player` and `match`, and the views are `v_wins`, `v_losses` and `v_standings`. Look in the `tournament.sql` file to get more information if needed.







