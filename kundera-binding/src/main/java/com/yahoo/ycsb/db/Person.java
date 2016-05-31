package com.yahoo.ycsb.db;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "person", schema = "kundera@kundera-mongodb")
public class Person {
	
	
	
	@Override
	public String toString() {
		return "Person [userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", birthDate="
				+ birthDate + ", company=" + company + ", city=" + city + ", address=" + address + ", email=" + email
				+ ", streetname=" + streetname + ", streetsuffix=" + streetsuffix + ", personalnumber=" + personalnumber
				+ "]";
	}

	@Override
	public boolean equals(Object obj) {
		return obj == this || (obj instanceof Person && hasSameFields( ((Person) obj) ));
	}
	
	private boolean hasSameFields(Person p) {
		return userId.equals(p.getUserId()) &&
				firstName.equals(p.getFirstName()) &&
				lastName.equals(p.getLastName()) &&
				birthDate == p.getBirthDate() &&
				company.equals(p.getCompany()) &&
				city.equals(p.getCity()) &&
				address.equals(p.getAddress()) &&
				email.equals(p.getEmail()) &&
				streetname.equals(p.getStreetname()) &&
				streetsuffix.equals(p.getStreetsuffix()) &&
				personalnumber == p.getPersonalnumber();
	}

	@Id
	private String userId;

	@Column
	private String firstName;

	@Column
	private String lastName;

	@Column
	private int birthDate;

	@Column
	private String company;

	@Column
	private String city;

	@Column
	private String address;

	@Column
	private String email;

	@Column
	private String streetname;

	@Column
	private String streetsuffix;

	@Column
	private int personalnumber;
	
	public Person() {
		
	}
	
	public Person(String userId, String firstName, String lastName, int yearOfBirth, String company, String city,
			String address, String email, String streetname, String streetsuffix, int personalnumber) {
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.birthDate = yearOfBirth;
		this.company = company;
		this.city = city;
		this.address = address;
		this.email = email;
		this.streetname = streetname;
		this.streetsuffix = streetsuffix;
		this.personalnumber = personalnumber;
	}



	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(int yearOfBirth) {
		this.birthDate = yearOfBirth;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStreetname() {
		return streetname;
	}

	public void setStreetname(String streetname) {
		this.streetname = streetname;
	}

	public String getStreetsuffix() {
		return streetsuffix;
	}

	public void setStreetsuffix(String streetsuffix) {
		this.streetsuffix = streetsuffix;
	}

	public int getPersonalnumber() {
		return personalnumber;
	}

	public void setPersonalnumber(int personalnumber) {
		this.personalnumber = personalnumber;
	}

	
	
	

}