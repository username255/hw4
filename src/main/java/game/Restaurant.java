package game;

public class Restaurant {
	int reputation;
	int budget;
	
//------------- new --------------------------	
	
	String name;
	
	public void setName(String name_) {	
		this.name = name_;
	}
	
	public String getName() {	
		return name;
	}
	
	public void setBudget(int budget_) {	
		budget = budget_;
	}
	
	public int getBudget() {	
		return budget;
	}

//----------- default ------------------------
/*	
	public void setReputation(int reputation) {	
		this.reputation = reputation;
	}

	public void recordClientSatisfactionOnFood() {
		reputation++;
	}

	public void recordClientSatisfactionOnBeverage() {
		reputation++;
	}

	public void recordClientSatisfactionOnService() {
		reputation++;
	}

	public void recordClientDissatisfactionOnFood() {
		reputation--;
	}

	public void recordClientDissatisfactionOnBeverage() {
		reputation--;
	}

	public void recordClientDissatisfactionOnService() {
		reputation--;
	}

	
	public void updateReputation() {
	}

	public int getReputation() {
		return reputation;
	}
*/
}
