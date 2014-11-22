Feature: Reputation calculation

As a player
I want to calculate and update the restaurant reputation
so that I can play the restaurant game

Scenario: Update restaurant reputation medium to low based on client satisfaction
	Given The game has started
	 And The restaurant is created
	 And The restaurant reputation is 20
	 And 2 clients are "satisfied" with the "food"
	 And 8 clients are "dissatisfied" with the "food"
	 And 5 clients are "satisfied" with the "beverages"
	 And 5 clients are "dissatisfied" with the "beverages"
	 And 3 clients are "satisfied" with the "service"
	 And 7 clients are "dissatisfied" with the "service"
	When The restaurant reputation is updated
	Then The restaurant reputation should be 10

Scenario: Update restaurant reputation low to medium based on client satisfaction
	Given The restaurant reputation is 10 
	 And 4 clients are "satisfied" with the "food"
	 And 4 clients are "satisfied" with the "beverages"
	 And 2 clients are "satisfied" with the "service"
	 And 2 clients are "dissatisfied" with the "service"
	When The restaurant reputation is updated
	Then The restaurant reputation should be 18

Scenario: Update restaurant reputation high to medium based on client satisfaction
	Given The restaurant reputation is 50 
	 And 4 clients are "satisfied" with the "food"
	 And 14 clients are "dissatisfied" with the "food"
	 And 9 clients are "satisfied" with the "beverages"
	 And 9 clients are "dissatisfied" with the "beverages"
	 And 3 clients are "satisfied" with the "service"
	 And 15 clients are "dissatisfied" with the "service"
	When The restaurant reputation is updated
	Then The restaurant reputation should be 28