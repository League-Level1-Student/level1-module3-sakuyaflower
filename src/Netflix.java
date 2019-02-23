
public class Netflix {
	public static void main(String[] args) {
		Movie f = new Movie("Fast and Furious", 0);
		Movie b = new Movie("Black Panther", 8 );
		Movie s = new Movie("The Grinch", 8);
		Movie h = new Movie("Home Alone", 9 );
		Movie g = new Movie("Ghost Busters", 10);
		System.out.println(h.getTicketPrice() );
		NetflixQueue r = new NetflixQueue();
		r.addMovie(f);
		r.addMovie(h);
		r.addMovie(b);
		r.addMovie(s);
		r.addMovie(g);
		System.out.println(r.getBestMovie());
		r.sortMoviesByRating();
System.out.println(r.getMovie(1));
	}
}
