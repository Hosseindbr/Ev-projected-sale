-- NYS_EV_Registrations table
CREATE TABLE NYS_EV_Registrations (
	Reg_Valid_Date DATE NOT NULL,
    VIN VARCHAR(15) NOT NULL,
    Zip_Code INT NOT NULL,
	City VARCHAR (30) NOT NULL,
	County VARCHAR (30) NOT NULL,
	Model VARCHAR (20) NOT NULL,
	Model_Year INT NOT NULL,
	Registration_Year INT NOT NULL,
     PRIMARY KEY (Zip_Code),
     UNIQUE (VIN)
);
-- NYS_EV_Charging_Stations table
CREATE TABLE NYS_EV_Charging_Stations (
	Zip_Code INT NOT NULL,
	City VARCHAR (30) NOT NULL,
	County VARCHAR (30) NOT NULL,
	Id INT,
	Charger_Count INT,
	PRIMARY KEY (Id)
);

-- Temperature of NY state table
CREATE TABLE Temperature_in_NYS (
	City VARCHAR (30) NOT NULL,
	County VARCHAR (30) NOT NULL,
	Measurement_Date Date NOT NULL,
	Temperature float(1) NOT NULL,
	Anomaly float (2) NOT NULL,
	
	PRIMARY KEY (City)
);

-- Average Income

CREATE TABLE ncome_And_Population_for_NYS (
	City VARCHAR (30) NOT NULL,
	County VARCHAR (30) NOT NULL,
	Population INT NOT NULL,
	Year INT NOT NULL,
	Income_US INT NOT NULL,
	Income_NYS INT NOT NULL,
	PRIMARY KEY (City)
);


-- Joining NYS_EV_Charging_Stations and NYS_EV_Registrations

SELECT s.County, s.Charger_Count, 
	r.Reg_Valid_Date,
    r.Zip_Code, 
	r.City,
	r.County,
	r.Registration_Year
FROM NYS_EV_Charging_Stations as s
RIGHT JOIN NYS_EV_Registrations as r
ON s.Zip_Code = r.Zip_Code;



