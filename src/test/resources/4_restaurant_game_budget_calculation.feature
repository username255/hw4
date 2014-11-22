Feature: Budget Calculation

As a player
I want to calculate and update the restaurant budget
so that I can the play the restaurant game

Scenario: Update budget based on cost of ingredients
Given The game has started
 And The restaurant is created
 And The budget is 6000
 And cost of ingredients for "high quality dishes" is 10
 And cost of ingredients for "low quality dishes" is 3
 And cost of ingredients for "high quality beverages" is 3
 And cost of ingredients for "low quality beverages" is 1
 And 4 clients choose "high quality dishes"
 And 6 clients choose "low quality dishes"
 And 6 clients choose "high quality beverages"
 And 4 clients choose "low quality beverages" 
When The budget is updated based on the "expenses"
Then The budget should be 5870
    
Scenario: 
Given The budget is 60
 And cost of ingredients for "high quality dishes" is 10
 And cost of ingredients for "low quality dishes" is 3
 And cost of ingredients for "high quality beverages" is 3
 And cost of ingredients for "low quality beverages" is 1
 And 4 clients choose "high quality dishes"
 And 0 clients choose "low quality dishes"
 And 2 clients choose "high quality beverages"
 And 2 clients choose "low quality beverages"
When The budget is updated based on the "expenses"
Then Game Over

Scenario: Update budget based on cost of ingredients
Given The budget is 6000
 And cost of ingredients for "high quality dishes" is 10
 And cost of ingredients for "low quality dishes" is 3
 And cost of ingredients for "high quality beverages" is 3
 And cost of ingredients for "low quality beverages" is 1
 And 16 clients choose "high quality dishes"
 And 2 clients choose "low quality dishes"
 And 12 clients choose "high quality beverages"
 And 6 clients choose "low quality beverages"
When The budget is updated based on the "expenses"
Then The budget should be 5696

Scenario: Update budget based on weekly salary
Given The budget is 8000
 And The restaurant has the following employee(s) as "waiters"
  	| Name     | Surname |ExperienceLevel| Salary |
    | Naved    | Ahmed   | 		0        |  200   |
    | Fabrizio | Maggi   | 		0        |  200   | 
    | Amnir    | Hadachi | 		0        |  200   | 
 And The restaurant has the following employee(s) as "chef"
  	| Name 	   | Surname |ExperienceLevel| Salary | TaxCode |
    | Luciano  | Garcia  | 		0        |   300  | 0099	|
 And The restaurant has the following employee(s) as "barman"
  	| Name	   | Surname |ExperienceLevel| Salary |
    | Abel     |  Armas  | 		0        |   300  |
When The budget is updated based on the "salary"
Then The budget should be 6800

Scenario: Update budget based on weekly salary
Given The restaurant has the following employee(s) as "waiters"
  	| Name    | Surname |ExperienceLevel| Salary |
    | Naved   | Ahmed   | 		0       |   200  |
    | Fabrizio| Maggi   | 		0       |   200  | 
    | Amnir   | Hadachi | 		0       |   200  | 
 And The restaurant has the following employee(s) as "chef"
  	| Name 	  | Surname |ExperienceLevel| Salary | TaxCode |
    |Luciano  | Garcia  | 		0       |  300 	 |  0099   |
 And The restaurant has the following employee(s) as "barman"
  	| Name	  | Surname |ExperienceLevel| Salary |
    | Abel    |  Armas  | 	    0       |   300  |
And The budget is 1000
When The budget is updated based on the "salary"
Then Game Over

Scenario: Update budget based on weekly salary
Given The restaurant has the following employee(s) as "waiters"
  	| Name    | Surname |ExperienceLevel| Salary |
    | Naved   | Ahmed   |		0       |   200  |
    | Fabrizio| Maggi   |		1       |   300  | 
    | Amnir   | Hadachi |		2       |   400  | 
 And The restaurant has the following employee(s) as "chef"
  	| Name 	  | Surname |ExperienceLevel| Salary | TaxCode |
    | Luciano | Garcia  | 		1       |   400  |  0099   |
 And The restaurant has the following employee(s) as "barman"
  	| Name	  | Surname |ExperienceLevel| Salary |
    | Abel    |  Armas  | 		2       |   500  |
 And The budget is 1800
When The budget is updated based on the "salary"
Then The budget should be 0
And Game Over
