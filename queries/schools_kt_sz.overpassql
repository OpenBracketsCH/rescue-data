[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-SZ"];
)->.searchArea;
// gather results
(
  // query part for: “amenity=school”
  nwr["amenity"="school"](area.searchArea);
);
// print results
out body;
>;
out skel qt;