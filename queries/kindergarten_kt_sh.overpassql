[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-SH"];
)->.searchArea;
// gather results
(
  // query part for: “amenity=kindergarten”
  nwr["amenity"="kindergarten"](area.searchArea);
);
// print results
out body;
>;
out skel qt;