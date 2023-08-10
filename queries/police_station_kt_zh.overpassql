[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-ZH"];
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