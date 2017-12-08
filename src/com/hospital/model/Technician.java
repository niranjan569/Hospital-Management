package com.hospital.model;

import javax.persistence.*;

@Entity  
@DiscriminatorValue("technician")  
public class Technician extends User {

	private String technicalDetails;

	public String getTechnicalDetails() {
		return technicalDetails;
	}

	public void setTechnicalDetails(String technicalDetails) {
		this.technicalDetails = technicalDetails;
	}
}
