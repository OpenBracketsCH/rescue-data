[out:json][timeout:300];
(
//Kanton Zug
area["ISO3166-2"="CH-ZG"];
)->.searchArea;
// gather results
(
nwr["amenity"="social_facility"]["name"!~"^$"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
