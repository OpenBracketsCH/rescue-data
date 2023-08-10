[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-ZH"];
)->.searchArea;
// gather results
(
  // query part for: “amenity=fire_station”
  nwr["amenity"="fire_station"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
