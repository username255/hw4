package game;

import org.junit.Assert;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class GameSteps {
	Restaurant restaurant = null;
	Player player = null;
	GameController gameC = null;
	//------------------- new ----------------------------------------------------
	
	@Given("^The \"([^\"]*)\" is created with the name \"([^\"]*)\"$")
	public void setNameToId(String id, String name) throws Throwable {
		if (id == "restaurant")
			{
				restaurant = new Restaurant();
				restaurant.setName(name);
				System.out.println(id + "is created & name is now set to: " + restaurant.getName());
			}
		else if (id == "player")
			{
				player = new Player();
				player.setName(name);
				System.out.println(id + "is created & name is now set to: " + player.getName());
			}
		else System.out.println("No such " + id + ", sorry.");
	}

/*	@And("^The \"([^\"]*)\" is created with the name \"([^\"]*)\"			#setData\\?$")
	public void setNameToId2(String id, String name) throws Throwable {
		if (id == "restaurant")
			{
				restaurant = new Restaurant();
				restaurant.setName(name);
				System.out.println(id + "is created & name is now set to: " + restaurant.getName());
			}
		else if (id == "player")
			{
				player = new Player();
				player.setName(name);
				System.out.println(id + "is created & name is now set to: " + player.getName());
				
			}
		else System.out.println("No such " + id + ", sorry.");
	}*/

	@And("^The restaurant budget is initialised to (\\d+)$")
	public void setBudget(int budget) throws Throwable {	
		//System.out.println("Budget is: " + budget);
		restaurant = new Restaurant();
		restaurant.setBudget(budget);
		System.out.println("Budget is now set to: " + restaurant.getBudget());
	}

	@When("^I start playing restaurant game$")
	public void whenGameStartsTrigger() throws Throwable {
		gameC = new GameController();
		gameC.startGame();
		if(gameC.getGameStatus()) {System.out.println("done, game is started now");}
		else {System.out.println("game is not started, something wrong here");}
		//System.out.println("game started"); // should be some trigger here
	}

	@Then("^I should see \"([^\"]*)\"$")
	public void shouldSee(String sign) throws Throwable {
		System.out.println(sign);
	}
	
//	@And("^I should see \"([^\"]*)\"$")
//	public void I_should_see(String arg1) throws Throwable {
//		System.out.println(sign);
//	}
	
	//----------------------------------------------------------------------------
	
	//----------------- default --------------------------------------------------
	/*
	@Given("^the restaurant reputation is (\\d+)$")
	public void the_restaurant_reputation_is(int reputation) throws Throwable {
		restaurant = new Restaurant();
		restaurant.setReputation(reputation);
	}

	@Given("^(\\d+) clients are (\\w*)satisfied with the (\\w+)$")
	public void clients_are_satisfied_with_the_food(int numberOfClients, String prefix, String matter) throws Throwable {
		matter = matter.toLowerCase();
		for (int i = 0; i < numberOfClients; i++) {
			if (prefix.isEmpty()) {
				if (matter.startsWith("food"))
					restaurant.recordClientSatisfactionOnFood();
				else if (matter.startsWith("beverage"))
					restaurant.recordClientSatisfactionOnBeverage();
				else
					restaurant.recordClientSatisfactionOnService();
			} else {
				if (matter.startsWith("food"))
					restaurant.recordClientDissatisfactionOnFood();
				else if (matter.startsWith("beverage"))
					restaurant.recordClientDissatisfactionOnBeverage();
				else
					restaurant.recordClientDissatisfactionOnService();

			}
				
		}
	}

	@When("^the restaurant reputation is updated$")
	public void the_restaurant_reputation_is_updated() throws Throwable {
		restaurant.updateReputation();
	}

	@Then("^the restaurant reputation becomes (\\d+)$")
	public void the_restaurant_reputation_becomes(int reputation) throws Throwable {
		Assert.assertEquals(reputation, restaurant.getReputation());
	}
	*/
	//--------------------------------------------------------------------------------
}
