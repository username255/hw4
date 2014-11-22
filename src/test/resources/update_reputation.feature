Feature: something

	Scenario: Update restaurant reputation based on client satisfaction
		Given the restaurant reputation is 20
		And 8 clients are satisfied with the food
		And 2 clients are dissatisfied with the food
		And 5 clients are satisfied with the beverages
		And 5 clients are dissatisfied with the beverages
		And 7 clients are satisfied with the service
		And 3 clients are dissatisfied with the service
		When the restaurant reputation is updated
		Then the restaurant reputation becomes 30
    
	Scenario: Update restaurant reputation based on client satisfaction
		Given the restaurant reputation is 10 
		And 4 clients are satisfied with the food
		And 2 clients are satisfied with the beverages
		And 2 clients are dissatisfied with the beverages
		And 2 clients are satisfied with the service
		And 2 clients are dissatisfied with the service
		When the restaurant reputation is updated
		Then the restaurant reputation becomes 14

	Scenario: Update restaurant reputation based on client satisfaction
		Given the restaurant reputation is 50 
		And 16 clients are satisfied with the food
		And 2 clients are dissatisfied with the food
		And 12 clients are satisfied with the beverages
		And 6 clients are dissatisfied with the beverages
		And 15 clients are satisfied with the service
		And 3 clients are dissatisfied with the service
		When the restaurant reputation is updated
		Then the restaurant reputation becomes 82