package game;

import java.util.List;

import org.junit.Assert;

import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class GameSteps {
	Restaurant restaurant = null;
	Player player = null;
	GameController gameC = null;
	MenuItem menuItem = null;
	
	//------------------- feature 01 ----------------------------------------------------

	public void init1() {
		restaurant = new Restaurant();
		System.out.println("init1() is done");
	}
	
	public void init2() {
		player = new Player();
		System.out.println("init2() is done");
	}
	
	
	@Given("^The \"([^\"]*)\" is created with the name \"([^\"]*)\"$")
	public void setNameToId(String id, String name) throws Throwable {
				
		if (id.equals("restaurant"))
			{
				init1();
				restaurant.setName(name);
				System.out.println(id + "is created & name is now set to: " + restaurant.getName());
			}
		else if (id.equals("player"))
			{
				init2();
				player.setName(name);
				System.out.println(id + "is created & name is now set to: " + player.getName());
			}
		else System.out.println("No such " + id + ", sorry.");
	}

	@And("^The restaurant budget is initialised to (\\d+)$")
	public void setBudget(int budget) throws Throwable {	
		restaurant.setBudget(budget);
		System.out.println("Budget is now set to: " + restaurant.getBudget());
	}

	@When("^I start playing restaurant game$")
	public void whenGameStartsTrigger() throws Throwable {
		gameC = new GameController();
		gameC.startGame();
		if(gameC.getGameStatus()) {System.out.println("done, game is started now");}
		else {System.out.println("game is not started, something wrong here");}
	}

	@Then("^I should see \"([^\"]*)\"$")
	public void shouldSee(String sign) throws Throwable {
		System.out.println(sign);
	}
	
	
	//----------------- feature 02 ---------------------------------------------------------

	@Given("^The game has started$")
	public void gameHasStarted() throws Throwable {
		if(gameC.getGameStatus()) {}
		/*if(!gameC.getGameStatus())
			{
				gameC = new GameController();
				gameC.startGame();
				if(gameC.getGameStatus())	{System.out.println("game is started now");}
				//else	{System.out.println("game has failed to start, something wrong here");}
			}*/
		//else {System.out.println("game is running");}
	}

	@And("^The restaurant is created$")
	public void restaurantIsCreated() throws Throwable {
		//if(restaurant != null){ init1(); System.out.println("restaurant created"); }
		if(restaurant == null)/*else*/ {System.out.println("restaurant is already running");}
		// no else, because of test should fail in other case, so we can see something is wrong
	}

	@And("^the following set of \"([^\"]*)\"$")
	public void the_following_set_of(String setOf, DataTable table) throws Throwable {
	    // For automatic conversion, change DataTable to List<YourType>
		if(setOf.equals("Dishes"))
			{
				String priceLow = "";
				String priceHigh = "";
				boolean k = false;
				boolean l = false;
				
				System.out.println("Dishes" + " " + table.raw().get(2).get(2).toLowerCase().equals("low"));
				System.out.println(table);
				int n = table.getGherkinRows().size();
				for (int i=1; i<n; i++) {
					if (table.raw().get(i).get(2).toLowerCase().equals("low")) {
						//boolean k = false;
						if (!k) {priceLow = table.raw().get(i).get(3);	k = true;	System.out.println("priceLow is set to = " + priceLow);}
						//String priceLow = "";
						if (!table.raw().get(i).get(3).equals(priceLow)){System.out.println("ERROR!!! All the low quality dishes must have the same price");}
						else if (table.raw().get(i).get(3).equals(priceLow)) {;}//it's fine
					}
					else if (table.raw().get(i).get(2).toLowerCase().equals("high")) {
						//boolean l = false;
						if (!l) {priceHigh = table.raw().get(i).get(3);	l = true;	System.out.println("priceHigh is set to = " + priceHigh);}
						//String priceHigh = "";
						if (!table.raw().get(i).get(3).equals(priceHigh)){System.out.println("ERROR!!! All the high quality dishes must have the same price");}
						else if (table.raw().get(i).get(3).equals(priceHigh)) {;}//it's fine
					}
				}
				System.out.println("some: " + table.raw().get(1).get(2));
				System.out.println("size: " + table.getGherkinRows().size());
			    //actualCukes.add(new Cuke("Cucumis sativus", "Concombre"));
			    //actualCukes.add(new Cuke("Cucumis anguria", "Burr Gherkin"));
			    //expectedCukesTable.diff(actualCukes)
			}
		else if(setOf.equals("Beverages"))
			{	
				String priceLow = "";
				String priceHigh = "";
				boolean k = false;
				boolean l = false;
				
				System.out.println("Beverages");
				System.out.println(table);
				//
				int n = table.getGherkinRows().size();
				for (int i=1; i<n; i++) {
					if (table.raw().get(i).get(2).toLowerCase().equals("low")) {
						//boolean k = false;
						if (!k) {priceLow = table.raw().get(i).get(3);	k = true;	System.out.println("priceLow is set to = " + priceLow);}
						//String priceLow = "";
						if (!table.raw().get(i).get(3).equals(priceLow)){System.out.println("ERROR!!! All the low quality beverages must have the same price");}
						else if (table.raw().get(i).get(3).equals(priceLow)) {;}//it's fine
					}
					else if (table.raw().get(i).get(2).toLowerCase().equals("high")) {
						//boolean l = false;
						if (!l) {priceHigh = table.raw().get(i).get(3);	l = true;	System.out.println("priceHigh is set to = " + priceHigh);}
						//String priceHigh = "";
						if (!table.raw().get(i).get(3).equals(priceHigh)){System.out.println("ERROR!!! All the high quality beverages must have the same price");}
						else if (table.raw().get(i).get(3).equals(priceHigh)) {;}//it's fine
					}
				}
				//
				//int n = table.getGherkinRows().size();
			    //System.out.println("getBeverages = " + menuItem.getBeverages());
			}
		//else {System.out.println("something is wrong here");}	
		//System.out.println(table);
	}

	@When("^I create a Menu$")
	public void I_create_a_Menu() throws Throwable {
	}

	@Then("^I should see the \"([^\"]*)\"$")
	public void I_should_see_the(String arg1) throws Throwable {
	}


	
	//----------------- feature 03 ---------------------------------------------------------

	//----------------- feature 04 ---------------------------------------------------------

	//----------------- feature 05 ---------------------------------------------------------

	//----------------- feature 06 ---------------------------------------------------------
	
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
