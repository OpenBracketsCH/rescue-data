[out:json][timeout:300];
(
//Kanton Zürich
area["ISO3166-2"="CH-ZH"];
)->.searchArea;
// gather results
(
  // query part for: “emergency=disaster_help_point”
  nwr["emergency"="disaster_help_point"](area.searchArea);
);
// print results
out body;
>;
out skel qt;