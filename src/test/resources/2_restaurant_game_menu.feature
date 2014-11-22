Feature: Restaurant menu

As a player
I want to create restaurant menu
So that I can play the restaurant game.
     
Scenario: Creating a Restaurant Menu
	Given The game has started
	 And The restaurant is created 
	 And the following set of "Dishes"
		| Dish name	     |calories| quality | cost |
		| grilled chicken|  400   |  high   |  12  |
		| lasagna        |  800   |  low    |   7  | 
		| gnocchi        |  700   |  high   |  12  |
		| pizza          |  400   |  low    |   7  |
		| snitzel		 |	400	  |	 high   |	12 |
	 And the following set of "Beverages"
		| Beverage name	 | volume | quality | cost |
		| coke			 |   35	  |  high   |  5   |
		| fanta          |   35   |  low    |  2   | 
		| wine           |   50   |  high   |  5   |
		| beer           |   50   |  low    |  2   |
		| sprite		 |	 35	  |  high   |  5   |
	 When I create a Menu
	 Then I should see the "Restaurant menu is created"

Scenario: Creating a Restaurant Menu - incorrect high quality dishes scenario
	Given the following set of "Dishes"
		| Dish name	     |calories| quality | cost |
		| grilled chicken|  400   |  high   |  12  |
		| lasagna        |  800   |  low    |   7  | 
		| gnocchi        |  700   |  high   |  10  |
		| pizza          |  400   |  low    |   7  |
		| snitzel		 |	400	  |	 high   |  12  |
	 And the following set of "Beverages"
		| Beverage name	 | volume | quality | cost |
		| coke			 |   35	  |  high   |  5   |
		| fanta          |   35   |  low    |  2   | 
		| wine           |   50   |  high   |  5   |
		| beer           |   50   |  low    |  2   |
		| sprite		 |	 35	  |  high   |  5   |
	 When I create a Menu
	 Then I should see the "ERROR!!! All the high quality dishes must have the same price"  
    
Scenario: Creating a Restaurant Menu - incorrect low quality dishes scenario
	Given the following set of "Dishes"
		| Dish name	     |calories| quality | cost |
		| grilled chicken|  400   |  high   |  12  |
		| lasagna        |  800   |  low    |   7  | 
		| gnocchi        |  700   |  high   |  12  |
		| pizza          |  400   |  low    |   6  |
		| snitzel		 |	400	  |	 high   |  12  |
	 And the following set of "Beverages"
		| Beverage name	 | volume | quality | cost |
		| coke			 |   35	  |  high   |  5   |
		| fanta          |   35   |  low    |  2   | 
		| wine           |   50   |  high   |  5   |
		| beer           |   50   |  low    |  2   |
		| sprite		 |	 35	  |  high   |  5   |
	 When I create a Menu
	 Then I should see the "ERROR!!! all the low quality dishes must have the same price"  

Scenario: Creating a Restaurant Menu - incorrect high quality beverages scenario
	Given the following set of "Dishes"
		| Dish name	     |calories| quality | cost |
		| grilled chicken|  400   |  high   |  12  |
		| lasagna        |  800   |  low    |   7  | 
		| gnocchi        |  700   |  high   |  12  |
		| pizza          |  400   |  low    |   7  |
		| snitzel		 |	400	  |	 high   |  12  |
	 And the following set of "Beverages"
		| Beverage name	 | volume | quality | cost |
		| coke			 |   35	  |  high   |  7   |
		| fanta          |   35   |  low    |  2   | 
		| wine           |   50   |  high   |  5   |
		| beer           |   50   |  low    |  2   |
		| sprite		 |	 35	  |  high   |  5   |
	 When I create a Menu
	 Then I should see the "ERROR!!! all the high quality beverages must have the same price" 

Scenario: Creating a Restaurant Menu - incorrect low quality beverages scenario
	Given the following set of "Dishes"
		| Dish name	     |calories| quality | cost |
		| grilled chicken|  400   |  high   |  12  |
		| lasagna        |  800   |  low    |   7  | 
		| gnocchi        |  700   |  high   |  12  |
		| pizza          |  400   |  low    |   7  |
		| snitzel		 |	400	  |	 high   |  12  |
	 And the following set of "Beverages"
		| Beverage name	 | volume | quality | cost |
		| coke			 |   35	  |  high   |  5   |
		| fanta          |   35   |  low    |  1   | 
		| wine           |   50   |  high   |  5   |
		| beer           |   50   |  low    |  2   |
		| sprite		 |	 35	  |  high   |  5   |
	 When I create a Menu
	 Then I should see the "ERROR!!! all the low quality beverages must have the same price" 