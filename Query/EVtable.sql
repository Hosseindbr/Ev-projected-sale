SELECT * FROM demographic_database_ev_stations
SELECT * FROM income_and_population
SELECT * FROM nys_annual_energy_generation_and_sales
SELECT * FROM new_york_registrations
select * from ny_state_annual_temperature
select * from ny_state_daily_temperature_2015_2021



-- merge of registrations  and temperatures daily
SELECT * 
INTO daily_reg_and_temperature
FROM ny_state_daily_temperature_2015_2021
 FULL JOIN new_york_registrations ON ny_state_daily_temperature_2015_2021."Measurement_date" = new_york_registrations."Reg_Valid_Date"


-- merge of ev_stations and income population population
SELECT * 
INTO ev_stations_income_pop
FROM demographic_database_ev_stations
 FULL JOIN income_and_population ON demographic_database_ev_stations."County" = income_and_population."County_"
 
 
