[out:json][timeout:300];
(
//Kanton Schwyz
area["ISO3166-2"="CH-SZ"];
)->.searchArea;
// gather results
(
nwr["barrier"="gate"](area.searchArea);
nwr["barrier"="lift_gate"](area.searchArea);
);
// print results
out body;
>;
out skel qt;