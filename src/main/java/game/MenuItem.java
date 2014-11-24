package game;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class MenuItem {

	LinkedList dishes = null;
	LinkedList beverages = null;
	String name;
	int price;
	Quality quality;
	
	public void addBeverages(Collection<? extends String> entry, int n) {
		//this.beverages = new ArrayList<String>(n-1);;
		for (int i=1; i<n; i++) {
			beverages.add(entry);
		}
	}
	
	public LinkedList getBeverages() {
		return beverages;
	}
	
	
	public class Dish {
		String name;
		int calories;
		//private String name;
		private Quality quality;
		private int price;
		/*public void addDish(String name_, int calories_, Quality quality_, int price_) {
			this.name = name_;	
			this.calories = calories_;
			this.quality = quality_;
			this.price = price_;
		}*/
	}
	
	/*public void addDishes(Dish[] d, int n) {
		this.dishes[n] = null;
		for (int i=1; i<n; i++) {
			this.dishes[i] = Dish;
		}
	}

	public class Beverage {
		int volume;
		private String name;
		private Quality quality;
		private int price;
		public void addBev(String name_, int volume_, Quality quality_, int price_) {
			this.name = name_;
			this.volume = volume_;
			this.quality = quality_;
			this.price = price_;
		}
	}*/

}
