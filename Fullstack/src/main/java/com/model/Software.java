package com.model;

public class Software {
	    private int id;
	    private String name;
	    private String version;
	    private String description;

	    // Constructor
	    public Software(int id, String name, String version, String description) {
	        this.id = id;
	        this.name = name;
	        this.version = version;
	        this.description = description;
	    }

	    // Getters and Setters
	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getVersion() {
	        return version;
	    }

	    public void setVersion(String version) {
	        this.version = version;
	    }

	    public String getDescription() {
	        return description;
	    }

	    public void setDescription(String description) {
	        this.description = description;
	    }
	


}
