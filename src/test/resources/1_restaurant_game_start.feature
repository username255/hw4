Feature: Restaurant starts game

As a player
I want to start a game
So that I can play the restaurant game.

Scenario: Create a restaurant for player
	Given The "restaurant" is created with the name "UT Restaurant (UTR)"
	 And The "player" is created with the name "Naved"
	 And The restaurant budget is initialised to 10000
   	When I start playing restaurant game
    Then I should see "Welcome to UT Restaurant (UTR) Game!"
     And I should see "Thank you, Naved."
     And I should see "The starting budget equals to 10 000"
     
     
# @Given("^The \"([^\"]*)\" is created with the name \"([^\"]*)\"$")
#	public void The_is_created_with_the_name(id, name) throws Throwable {
#	restaurant = new Restaurant();
#		restaurant.setReputation(reputation);	
#
#	System.out.println("created the name");
#	}

# Restaurant class - make
# Player class - make

#String name;
#int budget;
#	public void setName(String name) {	
#		this.name = reputation;
#	}
#	
#	public void setBudget(int budget) {	
#		this.budget = budget;
#	}
#	
#	public int shouldSee(sign) {
#		System.out.println(sign);
#	}