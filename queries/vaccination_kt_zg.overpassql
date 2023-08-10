[out:json][timeout:300];
(
//Kanton Zug
area["ISO3166-2"="CH-ZG"];
)->.searchArea;
// gather results
(
nwr["healthcare:speciality"="vaccination"](area.searchArea);
);
// print results
out body;
>;
out skel qt;