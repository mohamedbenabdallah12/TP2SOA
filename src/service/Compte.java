package service;

import java.time.LocalTime;
import java.util.Date;

public class Compte {

		private static final LocalTime LocalTime = null;

		double code;

		double solde;

		LocalTime dateCreation;

		public Compte(double code,double solde,LocalTime  date) {

			this.code=code;

			this.solde=solde;

			this.dateCreation=date;

		}

		public void setcode(double code) {

			this.code=code;

		}

		

		public double getcode() {

			return this.code;

		}

		public void setsolde(double solde) {

			this.solde=solde;

		}

		public double getsolde() {

			return this.solde;

		}

		public void setdate(Date date) {

			this.dateCreation=LocalTime;

		}

		public java.time.LocalTime getdate() {

			return this.dateCreation;

		}
	}

		


