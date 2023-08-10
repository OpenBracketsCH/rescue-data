[out:json][timeout:300];
(
//Kanton Schaffhausen
area["ISO3166-2"="CH-SH"];
)->.searchArea;
// gather results
(
nwr["social_facility"="nursing_home"]["name"!~"^$"](area.searchArea);
nwr["social_facility"="group_home"]["name"!~"^$"](area.searchArea);
nwr["amenity"="nursing_home"]["name"!~"^$"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
