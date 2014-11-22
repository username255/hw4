Feature: Player assigns waiters to The restaurant tables

As a player
I want to assign waiters to The restaurant tables
so that they can serve restaurant clients.

Scenario: Player assigns waiter - successful scenario
    Given The game has started
	 And The restaurant is created 
	 And The restaurant has following tables
    	| tableNumber |
    	|     1 	  |
        |     2 	  | 
        |     3 	  | 
        |     4 	  | 
        |     5 	  |
        |     6 	  | 
        |     7 	  | 
        |     8 	  | 
        |     9 	  |
     And the following clients are randomly assigned to the tables
      | tableNumber | number_of_clients |
      |   1 	    | 		2           |
      |   2 	    | 		2           | 
      |   4 	    | 		2           |
      |   6 	    | 		2           |
      |   9 	    | 		2           |
     And The restaurant has 3 waiters "Naved, Fabrizio, Amnir" all with experience level 0 and salary 200
    When I assigned the following waiters to the table
      |tableNumber | number_of_clients |assigned_waiter| 
      |   2        | 		2          |    Naved      |     
      |   9        | 		2          |    Naved      |
      |   4        | 		2          |    Amnir      | 
      |   6        | 		2          |    Fabrizio   |
      |   1        | 		2          |    Fabrizio   |
	Then I should see the message "Successful Assignment"
	
Scenario: Player assigns waiter - Unsuccessful scenario
    Given The restaurant has following tables
    	| tableNumber |
    	|     1 	  |
        |     2 	  | 
        |     3 	  | 
        |     4 	  | 
        |     5 	  |
        |     6 	  | 
        |     7 	  | 
        |     8 	  | 
        |     9 	  |
     And the following clients are randomly assigned to the tables
      | tableNumber | number_of_clients |
      |   1 	    | 		2           |
      |   2 	    | 		2           | 
      |   3 	    | 		2           |
      |   4 	    | 		2           |
      |   5 	    | 		2           | 
     
     And The restaurant has 3 waiters "Naved Ahmed, Fabrizio Maggi, Amnir Hadachi" all with experience level 0 and salary 200
    When I assigned the following waiters to the table
      | tableNumber | number_of_clients | assigned_waiter |
      |   1 	    | 		2           |      Naved      | 
      |   2 	    | 		2           |      Naved      |  
      |   3 	    | 		2           |      Naved      | 
      |   5         | 		2           |      Fabrizio   |
      |   4         | 		2           |      Naved      |
	Then I should see the message "ERROR!!! Naved has more than three tables assigned"