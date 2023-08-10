[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-ZH"];
)->.searchArea;
// gather results
(
nwr["healthcare:speciality"="vaccination"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
