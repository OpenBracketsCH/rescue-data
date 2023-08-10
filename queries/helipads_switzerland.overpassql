[out:json][timeout:300];
(
//ganze Schweiz
area["ISO3166-1"="CH"];
)->.searchArea;
// gather results
(
nwr["aeroway"="helipad"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
