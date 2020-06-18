---
layout: page
title: News
---

<h2>
  Release GraphSense 0.4.4
  <small class="text-muted">(2020-06-16)</small>
</h2>

We are happy to announce that the fourth minor release (0.4.4) of the the 0.4 series, has arrived.

This release provides some bug fixes and minor enhancements, such as:

* A Tag Coherence score as an indicator for heuristic clustering reliability

* Automated connection of entities on the GraphSense Dashboard

* Audit trails can be exported as PDF report


<h2>
  Release GraphSense 0.4.3
  <small class="text-muted">(2020-05-11)</small>
</h2>

GraphSense 0.4.3 the third minor release of the 0.4 series, has arrived.

This release provides a number of bug fixes, enhancements, and minor features.

#### GraphSense Dashboard

* Annotate addresses and import/export tag packs

* Log investigation interactions locally (required for court-proof evidence)

* Inspect transaction details in entity graph relations

* Compute address / entity statistics summaries across ledgers

* Search transaction path using more fine-grained conditions (e.g., totalReceived)

#### TagPacks

* Use concepts from agreed-upon taxonomies (e.g., [INTERPOL Dark Web and Virtual Assets](https://interpol-innovation-centre.github.io/DW-VA-Taxonomy/)) in TagPack descriptions.

* Validate and insert TagPacks using a dedicated [TagPack Management Tool](https://github.com/graphsense/graphsense-tagpack-tool)

#### Back-end Infrastructure

* Build and run components using [Docker Compose](https://docs.docker.com/compose/)

* Upgrade to Scala 2.12, Spark 2.4.5

* Reintegration of clustering library into transformation