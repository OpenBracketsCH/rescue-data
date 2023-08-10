[out:json][timeout:300];
(
//Kanton Zug
area["ISO3166-2"="CH-ZG"];
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