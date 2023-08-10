[out:json][timeout:300];
area[name="Zürich"]["wikipedia"="de:Zürich"]->.zurich;
// gather results
(
  // query part for: “amenity=childcare"
  nwr["amenity"="childcare"](area.searchArea);
);
// print results
out body;
>;
out skel qt;