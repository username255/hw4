Feature: Employee training
As a player
I want to train the restaurant's employee
to increase their experience level

  Scenario: Upgrade chef experience
 	Given The game has started
	 And The restaurant is created 
	 And The list of employees
     | Name     | Job     | Experience |  
     | Luciano  | chef    |  low       |         
     | Naved    | waiter  |  low       |            
     | Fabrizio | waiter  |  low       |          
     | Amnir    | waiter  |  low       |           
     | Abel     | barman  |  low       |           
 	 And The budget is 10000
 	When I want to increase the experience of 1 employee(s) "Luciano" with the job "chef"
 	Then I should see "The chef experience level increased"
   	 And The budget should update to 8800
  
  Scenario: Upgrade barman experience
 	Given The list of employees
     | Name     | Job     | Experience |  
     | Luciano  | chef    |  low       |         
     | Naved    | waiter  |  low       |            
     | Fabrizio | waiter  |  low       |          
     | Amnir    | waiter  |  low       |           
     | Abel     | barman  |  low       |  
     And The budget is 10000
    When I want to increase the experience of 1 employee(s) "Abel" with the job "barman"
 	Then I should see "The barman experience level increased"
   	 And The budget should update to 8800

   Scenario: Upgrade waiter experience
    Given The list of employees
     | Name     | Job     | Experience |  
     | Luciano  | chef    |  low       |         
     | Naved    | waiter  |  low       |            
     | Fabrizio | waiter  |  low       |          
     | Amnir    | waiter  |  low       |           
     | Abel     | barman  |  low       |   
     And The budget is 10000
    When I want to increase the experience of 1 employee(s) "Naved" with the job "waiter"
    Then I should see "The waiter experience level increased"
   	 And The budget should update to 9200

  Scenario: Upgrade chef experience
    Given The list of employees
     | Name     | Job     | Experience |  
     | Luciano  | chef    |  low       |         
     | Naved    | waiter  |  low       |            
     | Fabrizio | waiter  |  low       |          
     | Amnir    | waiter  |  low       |           
     | Abel     | barman  |  low       |   
     And The budget is 700
    When I want to increase the experience of 1 employee(s) "Luciano" with the job "chef"
    Then I should see "The chef experience level failed to increase"
  
  Scenario: Upgrade two waiters experience
 	Given The list of employees
     | Name     | Job     | Experience |  
     | Luciano  | chef    |  low       |         
     | Naved    | waiter  |  low       |            
     | Fabrizio | waiter  |  low       |          
     | Amnir    | waiter  |  low       |           
     | Abel     | barman  |  low       |    
 	 And The budget is 10000
 	When I want to increase the experience of 2 employee(s) "Fabrizio,Amnir" with the job "waiter,waiter"
 	Then I should see "The two waiters experience level increased"
 	 And The budget should update to 8400

  Scenario: Upgrade barman and waiter experience
    Given The list of employees
     | Name     | Job     | Experience |  
     | Luciano  | chef    |  low       |         
     | Naved    | waiter  |  low       |            
     | Fabrizio | waiter  |  low       |          
     | Amnir    | waiter  |  low       |           
     | Abel     | barman  |  low       |    
     And The budget is 880
    When I want to increase the experience of 2 employee(s) "Abel,Naved" with the job "barman,waiter"
 	Then I should see "The waiter experience level increased and the barman experience level failed to increase"
 	 And The budget should update to 80
