[out:json][timeout:300];
(
//Kanton Schwyz
area["ISO3166-2"="CH-SZ"];
)->.searchArea;
// gather results
(
  // query part for: “amenity=police”
  nwr["amenity"="police"](area.searchArea);
);
// print results
out body;
>;
out skel qt;