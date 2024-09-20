# Comparable Cities in Europe

## Abstract

Finding a feasible control group is central to many empirical methods in order to obtain reliable results as described above. This section describes an applied strategy for identifying comparable cities that can be used as a control group in further analytical steps.

Since randomized control trials are not feasible for studying the impact of Nature-based Solutions (NbS), we need to develop a strategy for identifying a good comparison group that serves as a proxy for the NbS-treated city. Since perfect comparability is not feasible in real-world examples, we rely on an applied matching strategy where we aim to identify a comparison city for each city included in the project. We focus on CiPeLs, which are the project cities including e.g. Munich (Germany) and Leuven (Belgium), as well as cities that have already implemented NbS measures. These cities and the corresponding information on the NbS strategies adopted have been collected by the experts of this project.[^complete_list_cities]

[^complete_list_cities]: The complete list includes 34 cities which are: Antwerp, Augsburg, Balatonfuzfo, Barcelona, Bari, Basel, Belgrade, Bolzano, Bratislava, Brussels, Budapest, Chania, Eindhoven, Genova, Gyor, Gzira, Hamburg, Krakow, Leipzig, Leuven, Malmo, Meran, Montpellier, Munich, Nicosia, Paris, Poznan, Prague, Szeged, Szombathely, Tampere, Utrecht, Valladolid, Vienna.

## Constructed Measures of Comparability

## Matching Cities

After constructing these measures, we define a matching algorithm to assign a comparison city (or multiple cities in the case of multiple cities with similar characteristics) to each of the target cities. Since it is unlikely that there will be a perfect match, i.e. the measure of city A is exactly equal to the measure of city B, we define a <b>matching threshold (degree of similarity)</b> of 20%. Thus, if City A's measure falls within ±20% of City B's measure, we consider both cities to be similar for that particular characteristic. The 20% match threshold can be debated, as any other number could work. A lower number would ensure that two cities have a higher degree of similarity, while a higher number would make them less comparable. Beyond these theoretical considerations, it is important to note that from an applied perspective, the number of potential comparison candidates decreases with a lower matching threshold, which could lead to finding no matching city at all. For reliable empirical results, both arguments need to be considered. On the one hand, the comparison city should be a good proxy for the target city, i.e., a good match, which argues for a lower matching threshold, but on the other hand, the sample size must be sufficient, i.e., which argues for a higher matching threshold, to apply different empirical methods.
In addition to the matching threshold, we also constrain the algorithm to exclude the scenario of self-matching. Thus, a city cannot be matched to itself as a comparison group. Although one could argue that a city itself would be the best possible comparison group, this also raises the problem of spillovers, as discussed above, which would confound the results.

## Mapping Input Data

## Final Result (An Example)