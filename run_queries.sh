#!/bin/bash

set -e
set -o pipefail

function cleanup {
  exit $?
}
trap "cleanup" EXIT

DIR="$(cd "$(dirname "$0")" && pwd)"


# Defibrillatoren Dispogebiet SRZ
echo -ne "Query Defibrillatoren Dispogebiet SRZ...         "
cat $DIR/queries/defis_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis/defis_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Stadt Zürich
echo -ne "Query Defibrillatoren Stadt Zürich...            "
cat $DIR/queries/defis_stadt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis/defis_stadt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Zürich
echo -ne "Query Defibrillatoren Kanton Zürich...           "
cat $DIR/queries/defis_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis/defis_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler Dispogebiet SRZ
echo -ne "Query Spitäler Dispogebiet SRZ..."
cat $DIR/queries/hospital_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/hospital/hospital_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler Kanton ZH
echo -ne "Query Spitäler Kanton ZH..."
cat $DIR/queries/hospital_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/hospital/hospital_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler Kanton SH
echo -ne "Query Spitäler Kanton SH..."
cat $DIR/queries/hospital_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/hospital/hospital_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler Kanton SZ
echo -ne "Query Spitäler Kanton SZ..."
cat $DIR/queries/hospital_kt_sz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/hospital/hospital_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler Kanton ZG
echo -ne "Query Spitäler Kanton ZG..."
cat $DIR/queries/hospital_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/hospital/hospital_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler Schweiz
echo -ne "Query Spitäler Schweiz..."
cat $DIR/queries/hospital_switzerland.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/hospital/hospital_switzerland.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Altersheime Dispogebiet SRZ
echo -ne "Query Altersheime Dispogebiet SRZ..."
cat $DIR/queries/nursing_home_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/nursing_home/nursing_home_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Altersheime Kanton ZH
echo -ne "Query Altersheime Kanton ZH..."
cat $DIR/queries/nursing_home_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/nursing_home/nursing_home_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Altersheime Kanton SH
echo -ne "Query Altersheime Kanton SH..."
cat $DIR/queries/nursing_home_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/nursing_home/nursing_home_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Altersheime Kanton SZ
echo -ne "Query Altersheime Kanton SZ..."
cat $DIR/queries/nursing_home_kt_sz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/nursing_home/nursing_home_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Altersheime Kanton ZG
echo -ne "Query Altersheime Kanton ZG..."
cat $DIR/queries/nursing_home_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/nursing_home/nursing_home_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Solzialeinrichtungen Dispogebiet SRZ
echo -ne "Query Sozialeinrichtungen Dispogebiet SRZ..."
cat $DIR/queries/social_facilities_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/social_facilities/social_facilities_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Soziaöleinrichtungen Kanton ZH
echo -ne "Query Sozialeinrichtungen Kanton ZH..."
cat $DIR/queries/social_facilities_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/social_facilities/social_facilities_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Sozialeinrichtungen Kanton SH
echo -ne "Query Sozialeinrichtungen Kanton SH..."
cat $DIR/queries/social_facilities_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/social_facilities/social_facilities_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Sozialeinrichtungen Kanton SZ
echo -ne "Query Sozieleinrichtungen Kanton SZ..."
cat $DIR/queries/social_facilities_kt_sz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/social_facilities/social_facilities_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Sozialeinrichtungen Kanton ZG
echo -ne "Query Sozialeinrichtungen Kanton ZG..."
cat $DIR/queries/social_facilities_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/facilities/social_facilities/social_facilities_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Rettungswachen Dispogebiet SRZ
echo -ne "Query Rettungswachen Dispogebiet SRZ...           "
cat $DIR/queries/ambulancestation_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/ambulance_station/ambulancestation_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Feuerwehrwachen Kanton Zürich
echo -ne "Query Feuerwehrwachen Kanton Zürich...           "
cat $DIR/queries/firestation_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/fire_station/firestation_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Helipads Dispogebiet SRZ
echo -ne "Query Helipads Dispogebiet SRZ...           "
cat $DIR/queries/helipads_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/helipad/helipads_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Helipads ganze CH
echo -ne "Query Helipads ganze Schweiz...           "
cat $DIR/queries/helipads_switzerland.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/helipad/helipads_switzerland.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Dispogebiet SRZ
echo -ne "Query Polizeistationen Dispogebiet SRZ...           "
cat $DIR/queries/police_station_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/police_station/police_station_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Kanton Schaffhausen
echo -ne "Query Polizeistationen Kanton Schaffhausen...           "
cat $DIR/queries/police_station_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/police_station/police_station_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Kanton Schwyz
echo -ne "Query Polizeistationen Kanton Schwyz...           "
cat $DIR/queries/police_station_kt_sz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/police_station/police_station_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Kanton Zug
echo -ne "Query Polizeistationen Kanton Zug...           "
cat $DIR/queries/police_station_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/police_station/police_station_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Kanton Zürich
echo -ne "Query Polizeistationen Kanton Zürich...           "
cat $DIR/queries/police_station_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/police_station/police_station_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""
# Polizeistationen Stadt Zürich (Stapo und Kapo)
echo -ne "Query Polizeistationen Stadt Zürich...           "
cat $DIR/queries/police_station_stadt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/police_station/police_station_stadt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Tore und Barrieren Dispogebiet SRZ
echo -ne "Query Gates Dispo SRZ...           "
cat $DIR/queries/gates_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/access/gates/gates_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Tore und Barrieren Kanton ZH
echo -ne "Query Tore und Barrieren Kanton ZH...           "
cat $DIR/queries/gates_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/access/gates/gates_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Tore und Barrieren Kanton SZ
echo -ne "Query Tore und Barrieren Kanton SZ...           "
cat $DIR/queries/gates_kt_sz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/access/gates/gates_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Tore und Barrieren Kanton SH
echo -ne "Query Tore und Barrieren Kanton SH...           "
cat $DIR/queries/gates_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/access/gates/gates_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Tore und Barrieren Kanton ZG
echo -ne "Query Tore und Barrieren Kanton ZG...           "
cat $DIR/queries/gates_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/access/gates/gates_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Apotheken Dispo SRZ
echo -ne "Query Apotheken Dispo SRZ...           "
cat $DIR/queries/pharmacy_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/pharmacy/pharmacy_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Apotheken Kanton Zürich
echo -ne "Query Apotheken Kanton Zürich...           "
cat $DIR/queries/pharmacy_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/pharmacy/pharmacy_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Apotheken Kanton Schwyz
echo -ne "Query Apotheken Kanton Schwyz...           "
cat $DIR/queries/pharmacy_kt_sz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/pharmacy/pharmacy_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Apotheken Kanton Schaffhausen
echo -ne "Query Apotheken Kanton Schaffhausen...           "
cat $DIR/queries/pharmacy_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/pharmacy/pharmacy_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Apotheken Kanton Schwyz
echo -ne "Query Apotheken Kanton Zug...           "
cat $DIR/queries/pharmacy_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/pharmacy/pharmacy_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Schweiz
echo -ne "Query Impfzentren Schweiz...           "
cat $DIR/queries/vaccination_switzerland.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/vaccination/vaccination_switzerland.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Dispo SRZ
echo -ne "Query Impfzentren Dispo SRZ...           "
cat $DIR/queries/vaccination_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/vaccination/vaccination_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Kanton Zürich
echo -ne "Query Impfzentren Kanton Zürich...           "
cat $DIR/queries/vaccination_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/vaccination/vaccination_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Kanton Schwyz
echo -ne "Query Impfzentren Kanton Schwyz...           "
cat $DIR/queries/vaccination_kt_sz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/vaccination/vaccination_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Kanton Schaffhausen
echo -ne "Query Impfzentren Kanton Schaffhausen...           "
cat $DIR/queries/vaccination_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/vaccination/vaccination_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Kanton Zug
echo -ne "Query Impfzentren Kanton Zug...           "
cat $DIR/queries/vaccination_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/vaccination/vaccination_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Schulen Dispo SRZ
echo -ne "Query Schulen Dispo SRZ...           "
cat $DIR/queries/schools_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/schools/schools_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Schulen Kanton Schaffhausen
echo -ne "Query Schulen Kanton Schaffhausen...           "
cat $DIR/queries/schools_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/schools/schools_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Schulen Kanton Schwyz
echo -ne "Query Schulen Kanton Schwyz...           "
cat $DIR/queries/schools_kt_sz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/schools/schools_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Schulen Kanton Zürich
echo -ne "Query Schulen Kanton Zürich...           "
cat $DIR/queries/schools_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/schools/schools_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Schulen Kanton Zug
echo -ne "Query Schulen Kanton Zug...           "
cat $DIR/queries/schools_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/schools/schools_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Schulen Stadt Zürich
echo -ne "Query Schulen Stadt Zürich...           "
cat $DIR/queries/schools_stadt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/schools/schools_stadt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindergarten Dispo SRZ
echo -ne "Query Schulen Dispo SRZ...           "
cat $DIR/queries/kindergarten_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/kindergarten/kindergarten_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindergarten Kanton Zürich
echo -ne "Query Kindergarten Kanton Zürich...           "
cat $DIR/queries/kindergarten_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/kindergarten/kindergarten_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindergarten Kanton Zug
echo -ne "Query Schulen Kanton Zürich...           "
cat $DIR/queries/kindergarten_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/kindergarten/kindergarten_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindergarten Kanton Schwyz
echo -ne "Query Schulen Kanton Schwyz...           "
cat $DIR/queries/kindergarten_kt_sz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/kindergarten/kindergarten_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindergarten Kanton Schaffhausen
echo -ne "Query Schulen Kanton Schaffhausen...           "
cat $DIR/queries/kindergarten_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/kindergarten/kindergarten_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindergarten Stadt Zürich
echo -ne "Query Kindergarten Stadt Zürich...           "
cat $DIR/queries/kindergarten_stadt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/kindergarten/kindergarten_stadt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindertagesstätten Dispo SRZ
echo -ne "Query Kindertagesstätten Dispo SRZ...           "
cat $DIR/queries/childcare_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/childcare/childcare_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindertagesstätten Kanton Zürich
echo -ne "Query Kindertagesstätten Kanton Zürich...           "
cat $DIR/queries/childcare_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/childcare/childcare_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindertagesstätten Kanton Zug
echo -ne "Query Kindertagesstätten Kanton Zürich...           "
cat $DIR/queries/childcare_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/childcare/childcare_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindertagesstätten Kanton Schwyz
echo -ne "Query Kindertagesstätten Kanton Schwyz...           "
cat $DIR/queries/childcare_kt_sz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/childcare/childcare_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindertagesstätten Kanton Schaffhausen
echo -ne "Query Kindertagesstätten Kanton Schaffhausen...           "
cat $DIR/queries/childcare_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/childcare/childcare_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kindertagesstätten Stadt Zürich
echo -ne "Query Kindertagesstätten Stadt Zürich...           "
cat $DIR/queries/childcare_stadt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/childcare/childcare_stadt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Autobahnen Dispo SRZ
echo -ne "Query Autobahnen Dispo SRZ...           "
cat $DIR/queries/motorway_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/highway/motorway/motorway_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Autostrassen Dispo SRZ
echo -ne "Query Autostrassen Dispo SRZ...           "
cat $DIR/queries/trunk_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/highway/trunk/trunk_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Rettungspunkte Stadt Zürich
echo -ne "Query Rettungspunkte Stadt Zürich...           "
cat $DIR/queries/emergency_access_point_stadt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/highway/emergency/emergency_access_point_stadt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Notfalltreffpunkte Kanton Zürich
echo -ne "Query Notfalltreffpunkte Kanton Zürich...           "
cat $DIR/queries/disaster_help_point_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/disaster_help_point/disaster_help_point_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Notfalltreffpunkte Kanton Zug
echo -ne "Query Notfalltreffpunkte Kanton Zug...           "
cat $DIR/queries/disaster_help_point_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/disaster_help_point/disaster_help_point_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Notfalltreffpunkte Kanton Schaffhausen
echo -ne "Query Notfalltreffpunkte Kanton Schaffhausen...           "
cat $DIR/queries/disaster_help_point_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/disaster_help_point/disaster_help_point_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""