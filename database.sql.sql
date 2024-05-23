CREATE TABLE location (
    iso_code    VARCHAR NOT NULL,
    location_name TEXT NOT NULL,
    PRIMARY KEY (iso_code)
    );

CREATE TABLE vaccine (
    vaccine_name VARCHAR NOT NULL,
    iso_code     VARCHAR,
    PRIMARY KEY (vaccine_name, iso_code),
    FOREIGN KEY (iso_code) REFERENCES location (iso_code)
);


CREATE TABLE date (
    date DATE NOT NULL,
    month INT NOT NULL,
    year INT NOT NULL,
    PRIMARY KEY (date)
);
    

CREATE TABLE vaccination (
    iso_code    VARCHAR NOT NULL,
    date        DATE    NOT NULL,
    people_vaccinated   INT,
    people_fully_vaccinated  INT,	
    total_boosters INT,	
    daily_vaccinations_raw INT,
    daily_vaccinations INT,		
    people_vaccinated_per_hundred	INT,
    people_fully_vaccinated_per_hundred INT,
    total_boosters_per_hundred INT,	
    daily_vaccinations_per_million	 INT,
    daily_people_vaccinated INT,	
    daily_people_vaccinated_per_hundred INT,
    source_name VARCHAR ,
    PRIMARY KEY (iso_code, date),
    FOREIGN KEY (iso_code) REFERENCES location (iso_code),
    FOREIGN KEY (date) REFERENCES date (date),
    FOREIGN KEY (source_name) REFERENCES source (source_name)
);

CREATE TABLE source(
    source_name VARCHAR NOT NULL,
    source_url VARCHAR,
    PRIMARY KEY (source_name)
);

CREATE TABLE CountryTotalVaccinations (
    iso_code VARCHAR NOT NULL,
    date DATE NOT NULL,
    vaccine_name VARCHAR NOT NULL,
    source_name VARCHAR,
    people_vaccinated INT,
    people_fully_vaccinated INT,
    total_boosters INT,
    PRIMARY KEY (iso_code, date, vaccine_name),
    FOREIGN KEY (iso_code,vaccine_name) REFERENCES vaccine (iso_code, vaccine_name),
    FOREIGN KEY (date) REFERENCES date (date),
    FOREIGN KEY (source_name) REFERENCES source (source_name)
);


CREATE TABLE age (
    age_group VARCHAR NOT NULL,
    PRIMARY KEY(age_group)
);

CREATE TABLE vaccinations_age_group (
    age_group VARCHAR NOT NULL,
    iso_code VARCHAR NOT NULL,
    date DATE NOT NULL,
    people_vaccinated_per_hundred INT,
    people_fully_vaccinated_per_hundred INT,
    people_with_booster_per_hundred INT,
    PRIMARY KEY (age_group, iso_code, date),
    FOREIGN KEY (age_group) REFERENCES age (age_group),
    FOREIGN KEY (iso_code) REFERENCES location (iso_code),
    FOREIGN KEY (date) REFERENCES date (date)
);


CREATE TABLE us_states (
    iso_code VARCHAR NOT NULL,
    state_name VARCHAR NOT NULL,
    PRIMARY KEY (iso_code, state_name),
    FOREIGN KEY (iso_code) REFERENCES location (iso_code)
);

CREATE TABLE us_state_vaccinations (
    iso_code VARCHAR NOT NULL,
    state_name VARCHAR NOT NULL,
    date DATE NOT NULL,
    total_distributed INT,
    people_vaccinated INT,	
    people_fully_vaccinated_per_hundred INT,
    people_fully_vaccinated INT,
    people_vaccinated_per_hundred INT,
    distributed_per_hundred INT,
    daily_vaccinations_raw INT,
    daily_vaccinations INT,
    daily_vaccinations_per_million INT,
    share_doses_used INT,	
    total_boosters INT,
    total_boosters_per_hundred INT,
    PRIMARY KEY (iso_code, state_name, date),
    FOREIGN KEY (iso_code,state_name) REFERENCES us_states (iso_code,state_name),
    FOREIGN KEY (date) REFERENCES date (date)
);




