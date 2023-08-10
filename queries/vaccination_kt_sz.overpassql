[out:json][timeout:300];
(
//Kanton Schwyz
area["ISO3166-2"="CH-SZ"];
)->.searchArea;
// gather results
(
nwr["healthcare:speciality"="vaccination"](area.searchArea);
);
// print results
out body;
>;
out skel qt;