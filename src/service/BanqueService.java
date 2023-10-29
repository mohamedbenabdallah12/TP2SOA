package service;

import java.time.LocalTime;
import java.util.ArrayList;

public class BanqueService {
	public double conversion (double montant) {
		return montant*3.36;
	}
public Compte GetCompte(double code) {
	return new Compte(code,0,LocalTime.now());
	
}
public ArrayList<Compte> GetComptes(int nbr){
	ArrayList<Compte> cs = new ArrayList<>();
	BanqueService bs =new BanqueService();
	for (int i = 0; i < nbr; i++) {
		cs.add(bs.GetCompte(i));	
	}
	return cs;
	
}
}
