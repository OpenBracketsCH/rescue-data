[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-ZH"];
)->.searchArea;
// gather results
(
nwr["amenity"="pharmacy"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
