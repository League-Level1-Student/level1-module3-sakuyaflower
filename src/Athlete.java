public class Athlete {

	static int nextBibNumber;
	static String raceLocation = " New York";
	static String raceStartTime = "9.00am";

	String name;
	int speed;
	int bibNumber;

	Athlete(String name, int speed) {
		this.name = name;
		this.speed = speed;
		this.bibNumber = nextBibNumber;
		nextBibNumber++;
	}

	public static void main(String[] args) {
		// create two athletes //print their names, bibNumbers, and the location of
		// their race. }
		Athlete Bob = new Athlete("Bob", 7);
		System.out.println("Bob " + Bob.bibNumber + raceLocation);
		Athlete Bobo = new Athlete("Bobo", 3);
		System.out.println("Bobo " + Bobo.bibNumber + raceLocation);

	}
}
