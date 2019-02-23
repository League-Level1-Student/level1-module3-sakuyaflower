import java.awt.Color;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridWorldRunner {
public static void main(String[] args) {
	World something = new World();
	something.show();
	Bug hi = new Bug();
	Bug boba = new Bug();
	Flower s = new Flower();
	Flower u = new Flower();
	Flower r = new Flower();
	Flower w = new Flower();
	hi.setColor(Color.cyan);
	boba.setColor(Color.magenta);
	u.setColor(Color.blue);
	s.setColor(Color.GREEN);
	r.setColor(Color.pink);
	w.setColor(Color.white);
	hi.turn();
	hi.turn();
	boba.turn();
	boba.turn();
	Location l = new Location(5, 5);
	Location f = new Location(3,3);
	Location y = new Location(4,4);
	Location t = new Location(6,7);
	Location p = new Location(5,2);
	Location o = new Location(4,8);
	something.add(l, hi);
	something.add(f, boba);
	something.add(y, s);
	something.add(t, u);
	something.add(o, r);
	something.add(p, w);
	
}
}
