[out:json][timeout:300];
(
//Kanton Schaffhausen
area["ISO3166-2"="CH-SH"];
)->.searchArea;
// gather results
(
nwr["amenity"="social_facility"]["name"!~"^$"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
