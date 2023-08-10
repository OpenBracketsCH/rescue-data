![logo_SRZ.png](logo_SRZ.png)

# ELZ Data

[![Get data from Overpass](https://github.com/Schutz-Rettung-Zurich/json-archive/workflows/Get%20data%20from%20Overpass/badge.svg)](https://github.com/Schutz-Rettung-Zurich/json-archive/actions?query=workflow%3A%22Get+data+from+Overpass%22)

Sammlung von Overpass Abfragen und exportiert in verschiedene Format-Files. Abgelegt in data/

**Wichtig**
Die Daten sind direkt aus OSM exportiert.

## Sinn und Zweck

Sinn dieses Archivs ist es, Datenveränderungen täglich nachzuvollziehen. Täglich wird nun automatisiert, ein GeoJSON generiert und somit Datenveränderungen dokumentiert. Vom GeoJSON wird dann in diverse Exportformate exportiert.
Die Datensammlung soll stetig wachsen und so ein sauberes Archiv generieren.

## Datenkatalog

In der Tabelle seht ihr, welche Daten verfügbar sind und aus welchen Kantonen.

| Daten | Beschreibung | Ordner | Formate | Kantone
| --- | --- | --- | --- | ---
| ambulance_station | Rettungswachen | `../ambulance_station` | `json` `csv`| Dispo SRZ
| fire_station | Feuerwehrwachen| `../fire_station` | `json` `csv`| ZH
| police_station | Polizeiwachen | `../police_station` | `json` `csv`| Dispo SRZ, ,SH, SZ, ZG, ZH, Stadt Zürich
| helipad | Hubschrauber Landeplätze | `../helipad` | `json` `csv`| Dispo SRZ, Schweiz
| hospital | Spitäler | `../facilities/hospital` | `json` `csv`| Dispo SRZ, SH, SZ, ZG, ZH, Schweiz
| nursing_home | Alters- und Pflegeheime | `../facilities/nursing_home` | `json` `csv`| Dispo SRZ, SH, SZ, ZG, ZH, Schweiz
| social_facility | Sozialeinrichtungen | `../facilities/social_facilities` | `json` `csv`| Dispo SRZ, SH, SZ, ZG, ZH, Schweiz
| pharmacy | Apotheken | `../pharmacy` | `json` `csv`| Dispo SRZ, SH, SZ, ZG, ZH
| vaccination | Impfzentren | `../vaccination` | `json` `csv`| Dispo SRZ, SH, SZ, ZG, ZH, Schweiz
| schools | Schulen / Schulgelände | `../schools` |`json` `csv`|  Dispo SRZ, SH, SZ, ZG, Zh, Stadt Zürich
| kindergarten | Kindergärten | `../kindergarten` |`json` `csv`|  Dispo SRZ, SH, SZ, ZG, Zh, Stadt Zürich
| childcare | Kindertagesstätten | `../childcare` |`json` `csv`|  Dispo SRZ, SH, SZ, ZG, Zh, Stadt Zürich
| motorway | Autobahnen | `../highway/motorway` | `json` `csv`| Dispo SRZ
| trunk | Autostrassen | `../highway/trunk` | `json` `csv`| Dispo SRZ
| gates | Tore und Barrieren | `../access/gates` | `json` `csv`|SH, SZ, ZG, ZH
| defibrillator | Defibrillatoren | `../defis` | `json` `csv`| Dispo SRZ, ZH, Stadt Zürich
| emergency_access_point | Rettungspunkte | `../highway/emergency` | `json` `csv`| Stadt Zürich
| disaster_help_point | Notfalltreffpunkte | `../disaster_help_point` | `json` `csv`| SH, ZH, ZG


## Overpass Abfragen via Overpass API

Umgebaute Queries die mit der Overpass API korrespondieren können. Alle Queries und die dazugehörigen Overpass Abfragen die auch im Web funktionieren findet man in `queries`
Dennoch hier ein paar Beispiele:

<details><summary>Abfragen ausklappen</summary>
<p>

## Spitäler und Altersheime

### Dispogebiet SRZ

```
[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-ZH"];
//Kanton Schwyz
area["ISO3166-2"="CH-SZ"];
//Kanton Schaffhausen
area["ISO3166-2"="CH-SH"];
//Kanton Zug
area["ISO3166-2"="CH-ZG"];
)->.searchArea;
// gather results
(
nwr["social_facility"="nursing_home"]["name"!~"^$"](area.searchArea);
nwr["social_facility"="group_home"]["name"!~"^$"](area.searchArea);
nwr["amenity"="hospital"]["name"!~"^$"](area.searchArea);
nwr["amenity"="nursing_home"]["name"!~"^$"](area.searchArea);
nwr["healthcare"="hospital"]["name"!~"^$"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
```

### Stadt Zürich

```
[out:json];
// [out:csv( ::type, ::id, ::lat, ::lon, name)];
// fetch area “Dispogebiet SRZ” to search in
(
area[name="Zürich"]["wikipedia"="de:Zürich"];
)->.searchArea;
// gather results
(
nwr["social_facility"="nursing_home"]["name"!~"^$"](area.searchArea);
nwr["social_facility"="group_home"]["name"!~"^$"](area.searchArea);
nwr["amenity"="hospital"]["name"!~"^$"](area.searchArea);
nwr["amenity"="nursing_home"]["name"!~"^$"](area.searchArea);
nwr["healthcare"="hospital"]["name"!~"^$"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
```

## Defibrillatoren

### Dispogebiet SRZ

```
[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-ZH"];
//Kanton Schwyz
area["ISO3166-2"="CH-SZ"];
//Kanton Schaffhausen
area["ISO3166-2"="CH-SH"];
//Kanton Zug
area["ISO3166-2"="CH-ZG"];
)->.searchArea;
// gather results
(
nwr["emergency"="defibrillator"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
```

### Kanton ZH

```
[out:json][timeout:300];
// fetch area “CH-ZH” to search in
area["ISO3166-2"="CH-ZH"]->.searchArea;
// gather results
(
  // query part for: “emergency=defibrillator”
  node["emergency"="defibrillator"](area.searchArea);
  way["emergency"="defibrillator"](area.searchArea);
  relation["emergency"="defibrillator"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
```

### Stadt ZH

```
[out:json][timeout:300];
area[name="Zürich"]["wikipedia"="de:Zürich"]->.zurich;
// gather results
(
  node["emergency"="defibrillator"](area.zurich);
  way["emergency"="defibrillator"](area.zurich);
  relation["emergency"="defibrillator"](area.zurich);
);
// print results
out body;
>;
out skel qt;
```

## Rettungswachen

### Dispogebiet SRZ

```
[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-ZH"];
//Kanton Schwyz
area["ISO3166-2"="CH-SZ"];
//Kanton Schaffhausen
area["ISO3166-2"="CH-SH"];
//Kanton Zug
area["ISO3166-2"="CH-ZG"];
)->.searchArea;
// gather results
(
nwr["emergency"="ambulance_station"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
```

## Feuerwehrwachen

### Kanton ZH

```
[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-ZH"];
)->.searchArea;
// gather results
(
  // query part for: “amenity=fire_station”
  node["amenity"="fire_station"](area.searchArea);
  way["amenity"="fire_station"](area.searchArea);
  relation["amenity"="fire_station"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
```

## Helipads

### Dispogebiet SRZ

```
[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-ZH"];
//Kanton Schwyz
area["ISO3166-2"="CH-SZ"];
//Kanton Schaffhausen
area["ISO3166-2"="CH-SH"];
//Kanton Zug
area["ISO3166-2"="CH-ZG"];
)->.searchArea;
// gather results
(
nwr["aeroway"="helipad"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
```

</p>
</details>

## Automation

In diesem Repository sind GitHub Actions eingerichtet, um täglich aktuelle Daten via [Overpass API](https://wiki.openstreetmap.org/wiki/Overpass_API) abzufragen und als GeoJSON abzulegen.

* Die aktuelle GeoJSON-Dateien sind im [`data` Verzeichnis](https://github.com/Schutz-Rettung-Zurich/json-archive/tree/main/data)
* Die GitHub Actions sind im [`overpass.yml`](https://github.com/Schutz-Rettung-Zurich/json-archive/blob/main/.github/workflows/overpass.yml) Workflow beschrieben
* Der Workflow verwendet das Skript [`run_queries.sh`](https://github.com/Schutz-Rettung-Zurich/json-archive/blob/main/run_queries.sh) um alle Queries laufen zu lassen
* Jedes Overpass-Query ist in einer eigenen Datei im [Verzeichnis `queries`](https://github.com/Schutz-Rettung-Zurich/json-archive/tree/main/queries) abgelegt

### Neues Query hinzufügen

Um ein neues Query hinzuzufügen, müssen folgende Schritte befolgt werden:

1. Query schreiben und via http://overpass-turbo.osm.ch/ testen. **ACHTUNG:** es ist nur die Overpass Query Syntax unterstützt, **keine [Overpass Turbo Shortcuts](https://wiki.openstreetmap.org/wiki/Overpass_turbo/Extended_Overpass_Turbo_Queries)** (z.B. ` {{geocodeArea:CH-ZH}}`)
1. Query als neue Datei in [`queries` Verzeichnis](https://github.com/Schutz-Rettung-Zurich/json-archive/tree/main/queries) ablegen
1. Neues Query in [`run_queries.sh`](https://github.com/Schutz-Rettung-Zurich/json-archive/blob/main/run_queries.sh) aufrufen
