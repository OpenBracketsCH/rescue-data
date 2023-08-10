[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-ZH"];
)->.searchArea;
// gather results
(
nwr["amenity"="hospital"]["name"!~"^$"](area.searchArea);
nwr["amenity"="clinic"]["name"!~"^$"](area.searchArea);
nwr["healthcare"="hospital"]["name"!~"^$"](area.searchArea);
nwr["healthcare"="clinic"]["name"!~"^$"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
