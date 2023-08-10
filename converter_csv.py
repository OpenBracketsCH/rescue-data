import pandas as pd

# Converting JSON Data to CSV

#Rettungswachen
df = pd.read_json (r'data/json/ambulance_station/ambulancestation_dispo_srz.geojson')
df.to_csv (r'data/csv/ambulance_station/ambulancestation_dispo_srz.csv', index = None)

# Defibrillatoren
df = pd.read_json (r'data/json/defis/defis_dispo_srz.geojson')
df.to_csv (r'data/csv/defis/defis_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/defis/defis_dispo_srz.geojson')
df.to_csv (r'data/csv/defis/defis_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/defis/defis_kt_zh.geojson')
df.to_csv (r'data/csv/defis/defis_kt_zh.csv', index = None)

df = pd.read_json (r'data/json/defis/defis_stadt_zh.geojson')
df.to_csv (r'data/csv/defis/defis_stadt_zh.csv', index = None)

# Feuerwachen
df = pd.read_json (r'data/json/fire_station/firestation_kt_zh.geojson')
df.to_csv (r'data/csv/fire_station/firestation_kt_zh.csv', index = None)

# Tore
df = pd.read_json (r'data/json/access/gates/gates_dispo_srz.geojson')
df.to_csv (r'data/csv/access/gates/gates_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/access/gates/gates_kt_sh.geojson')
df.to_csv (r'data/csv/access/gates/gates_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/access/gates/gates_kt_sz.geojson')
df.to_csv (r'data/csv/access/gates/gates_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/access/gates/gates_kt_zg.geojson')
df.to_csv (r'data/csv/access/gates/gates_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/access/gates/gates_kt_zh.geojson')
df.to_csv (r'data/csv/access/gates/gates_kt_zh.csv', index = None)

#Helipads

df = pd.read_json (r'data/json/helipad/helipads_dispo_srz.geojson')
df.to_csv (r'data/csv/helipad/helipads_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/helipad/helipads_switzerland.geojson')
df.to_csv (r'data/csv/helipad/helipads_switzerland.csv', index = None)

#Spitäler
df = pd.read_json (r'data/json/facilities/hospital/hospital_dispo_srz.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_kt_sh.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_kt_sz.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_kt_zg.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_kt_zh.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_kt_zh.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_kt_sh.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_switzerland.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_switzerland.csv', index = None)

#Heime
df = pd.read_json (r'data/json/facilities/nursing_home/nursing_home_dispo_srz.geojson')
df.to_csv (r'data/csv/facilities/nursing_home/nursing_home_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/facilities/nursing_home/nursing_home_kt_sh.geojson')
df.to_csv (r'data/csv/facilities/nursing_home/nursing_home_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/facilities/nursing_home/nursing_home_kt_sz.geojson')
df.to_csv (r'data/csv/facilities/nursing_home/nursing_home_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/facilities/nursing_home/nursing_home_kt_zg.geojson')
df.to_csv (r'data/csv/facilities/nursing_home/nursing_home_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/facilities/nursing_home/nursing_home_kt_zh.geojson')
df.to_csv (r'data/csv/facilities/nursing_home/nursing_home_kt_zh.csv', index = None)

#Sozialeinrichtungen
df = pd.read_json (r'data/json/facilities/social_facilities/social_facilities_dispo_srz.geojson')
df.to_csv (r'data/csv/facilities/social_facilities/social_facilities_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/facilities/social_facilities/social_facilities_kt_sh.geojson')
df.to_csv (r'data/csv/facilities/social_facilities/social_facilities_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/facilities/social_facilities/social_facilities_kt_sz.geojson')
df.to_csv (r'data/csv/facilities/social_facilities/social_facilities_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/facilities/social_facilities/social_facilities_kt_zg.geojson')
df.to_csv (r'data/csv/facilities/social_facilities/social_facilities_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/facilities/social_facilities/social_facilities_kt_zh.geojson')
df.to_csv (r'data/csv/facilities/social_facilities/social_facilities_kt_zh.csv', index = None)

#Apotheken
df = pd.read_json (r'data/json/pharmacy/pharmacy_dispo_srz.geojson')
df.to_csv (r'data/csv/pharmacy/pharmacy_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/pharmacy/pharmacy_kt_sh.geojson')
df.to_csv (r'data/csv/pharmacy/pharmacy_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/pharmacy/pharmacy_kt_sz.geojson')
df.to_csv (r'data/csv/pharmacy/pharmacy_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/pharmacy/pharmacy_kt_zg.geojson')
df.to_csv (r'data/csv/pharmacy/pharmacy_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/pharmacy/pharmacy_kt_zh.geojson')
df.to_csv (r'data/csv/pharmacy/pharmacy_kt_zh.csv', index = None)

#Polizeiwachen
df = pd.read_json (r'data/json/police_station/police_station_dispo_srz.geojson')
df.to_csv (r'data/csv/police_station/police_station_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/police_station/police_station_kt_sh.geojson')
df.to_csv (r'data/csv/police_station/police_station_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/police_station/police_station_kt_sz.geojson')
df.to_csv (r'data/csv/police_station/police_station_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/police_station/police_station_kt_zg.geojson')
df.to_csv (r'data/csv/police_station/police_station_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/police_station/police_station_kt_zh.geojson')
df.to_csv (r'data/csv/police_station/police_station_kt_zh.csv', index = None)

df = pd.read_json (r'data/json/police_station/police_station_stadt_zh.geojson')
df.to_csv (r'data/csv/police_station/police_station_stadt_zh.csv', index = None)

#Schulen
df = pd.read_json (r'data/json/schools/schools_dispo_srz.geojson')
df.to_csv (r'data/csv/schools/schools_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/schools/schools_kt_sh.geojson')
df.to_csv (r'data/csv/schools/schools_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/schools/schools_kt_sz.geojson')
df.to_csv (r'data/csv/schools/schools_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/schools/schools_kt_zg.geojson')
df.to_csv (r'data/csv/schools/schools_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/schools/schools_kt_zh.geojson')
df.to_csv (r'data/csv/schools/schools_kt_zh.csv', index = None)

df = pd.read_json (r'data/json/schools/schools_stadt_zh.geojson')
df.to_csv (r'data/csv/schools/schools_stadt_zh.csv', index = None)

#Kindergarten
df = pd.read_json (r'data/json/kindergarten/kindergarten_dispo_srz.geojson')
df.to_csv (r'data/csv/kindergarten/kindergarten_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/kindergarten/kindergarten_kt_zh.geojson')
df.to_csv (r'data/csv/kindergarten/kindergarten_kt_zh.csv', index = None)

df = pd.read_json (r'data/json/kindergarten/kindergarten_kt_sz.geojson')
df.to_csv (r'data/csv/kindergarten/kindergarten_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/kindergarten/kindergarten_kt_zg.geojson')
df.to_csv (r'data/csv/kindergarten/kindergarten_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/kindergarten/kindergarten_kt_sh.geojson')
df.to_csv (r'data/csv/kindergarten/kindergarten_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/kindergarten/kindergarten_stadt_zh.geojson')
df.to_csv (r'data/csv/kindergarten/kindergarten_stadt_zh.csv', index = None)

#Kindergarten
df = pd.read_json (r'data/json/childcare/childcare_dispo_srz.geojson')
df.to_csv (r'data/csv/childcare/childcare_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/childcare/childcare_kt_zh.geojson')
df.to_csv (r'data/csv/childcare/childcare_kt_zh.csv', index = None)

df = pd.read_json (r'data/json/childcare/childcare_kt_sz.geojson')
df.to_csv (r'data/csv/childcare/childcare_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/childcare/childcare_kt_zg.geojson')
df.to_csv (r'data/csv/childcare/childcare_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/childcare/childcare_kt_sh.geojson')
df.to_csv (r'data/csv/childcare/childcare_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/childcare/childcare_stadt_zh.geojson')
df.to_csv (r'data/csv/childcare/childcare_stadt_zh.csv', index = None)

#Impfzentren
df = pd.read_json (r'data/json/vaccination/vaccination_dispo_srz.geojson')
df.to_csv (r'data/csv/vaccination/vaccination_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/vaccination/vaccination_kt_sh.geojson')
df.to_csv (r'data/csv/vaccination/vaccination_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/vaccination/vaccination_kt_sz.geojson')
df.to_csv (r'data/csv/vaccination/vaccination_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/vaccination/vaccination_kt_zg.geojson')
df.to_csv (r'data/csv/vaccination/vaccination_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/vaccination/vaccination_kt_zh.geojson')
df.to_csv (r'data/csv/vaccination/vaccination_kt_zh.csv', index = None)

df = pd.read_json (r'data/json/vaccination/vaccination_switzerland.geojson')
df.to_csv (r'data/csv/vaccination/vaccination_switzerland.csv', index = None)

#Autobahnen
df = pd.read_json (r'data/json/highway/motorway/motorway_dispo_srz.geojson')
df.to_csv (r'data/csv/highway/motorway/motorway_dispo_srz.csv', index = None)

#Autostrassen
df = pd.read_json (r'data/json/highway/trunk/trunk_dispo_srz.geojson')
df.to_csv (r'data/csv/highway/trunk/trunk_dispo_srz.csv', index = None)

#Rettungspunkte
df = pd.read_json (r'data/json/highway/emergency/emergency_access_point_stadt_zh.geojson')
df.to_csv (r'data/csv/highway/emergency/emergency_access_point_stadt_zh.csv', index = None)

#Notfalltreffpunkte
df = pd.read_json (r'data/json/disaster_help_point/disaster_help_point_kt_zh.geojson')
df.to_csv (r'data/csv/disaster_help_point/disaster_help_point_kt_zh.csv', index = None)

df = pd.read_json (r'data/json/disaster_help_point/disaster_help_point_kt_zg.geojson')
df.to_csv (r'data/csv/disaster_help_point/disaster_help_point_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/disaster_help_point/disaster_help_point_kt_sh.geojson')
df.to_csv (r'data/csv/disaster_help_point/disaster_help_point_kt_sh.csv', index = None)