---
layout: page
title: News
---

<h2>
  Release GraphSense 23.01
  <small class="text-muted">(2023-02-14)</small>
</h2>

We are pleased to announce the latest release of GraphSense, version 23.01.

This update brings support for three major stable coins on the Ethereum platform: USDT, USDC, and WETH, with flows in these currencies annotated alongside Ether flows in the user interface. Additionally, smart contracts are now clearly marked with a cog symbol and thus are visible for the user.

Check out our walk-through video at https://youtu.be/UukSvbAUIh4 to learn more about the key changes. To access the latest version of GraphSense, visit our dashboard at https://app.ikna.io or our REST API at https://api.ikna.io, hosted by Iknaio.

Our open-source software is available for viewing at https://graphsense.github.io. We're also working on the next release, which will introduce real world actors to extend our annotation system for even more accurate information about cryptocurrency addresses.


<h2>
  Release GraphSense 22.10
  <small class="text-muted">(2022-10-22)</small>
</h2>
 
We are happy to announce our new GraphSense release!

Thanks to all users who provided feedback, suggested new features, and helped us improve the overall user experience! Some highlights of this release are:

* Data: Cryptoasset addresses are now synchronized periodically with the supported blockchains, which is an essential first step for real-time analytics. The Ethereum client has been updated and works with the recent proof-of-stake merge.

* Dashboard improvements: address-level tracing is now more intuitive; one can remove nodes using the DEL button; shadows indicating duplicate occurrences of address or entity nodes can be enabled/disabled, etc.

To access the most recent version of GraphSense, hosted by Iknaio (https://ikna.io), please use the following endpoints:
 
Dashboard: https://app.ikna.io
REST API: https://api.ikna.io


<h2>
  Release GraphSense 1.0.0
  <small class="text-muted">(2022-07-15)</small>
</h2>

We are happy to announce the first production release of GraphSense!

Some highlights of this release are:

* Complete rewrite of the GraphSense dashboard to allow for third-party add ons on-top of GraphSense.

* Integration of Ethereum account-to-account transactions


<h2>
  Release GraphSense 0.5.2
  <small class="text-muted">(2022-03-30)</small>
</h2>


We are happy to announce GraphSense 0.5.2. This minor release includes some bug fixes. A special focus
was on redesigning the tagpack handling, decoupling it from GraphSense transformations and introducing TagStores:  

* tags are maintained in a dedicated PostgreSQL datastore (as opposed to Cassandra like in previous releases)
* multiple TagStores are supported by the Dashboard
* private TagPacks (with restricted access) are possible
* making new tagpacks available for GraphSense end users is much faster because the TagPack processing is now decoupled from the GraphSense transformations



<h2>
  Release GraphSense 0.5.1
  <small class="text-muted">(2021-11-30)</small>
</h2>

We are happy to announce GraphSense 0.5.1. This minor release brings bug fixes, some additional features, improved attribution tags, performance enhancements, and, last but not least, ensures that GraphSense also works after the recent Bitcoin Taproot upgrade.

Some highlights of this release are:

* Dashboard improvements: users can now inspect transactions between entities; request limits are now visible on the dashboard; path search is now faster

* REST API improvements: performance improvements; unified mass data retrieval endpoints into a single “bulk” interface (CSV + JSON)

* Transformation job: faster statistics and graph computation after schema decluttering; upgrade to Apache Spark 3.1.2 and Cassandra 4

* Attribution Tags: additional taxonomy concepts; introduced confidence scores to TagPack schema; added more attribution tags to the public repo, mapped them to entity-level; integrated and tagged Wasabi and Samourai transactions.


<h2>
  Release GraphSense 0.5
  <small class="text-muted">(2021-06-01)</small>
</h2>


We are happy to announce GraphSense 0.5. This major release supports the analysis of Ethereum transactions and thus implements a first important step towards integrating account model ledgers.
 
Other highlights of this release are:

* Dashboard improvements: colored marking of specific transactions paths; faster path search; a local in-browser tag store for managing added attribution tags

* REST API improvements: faster responses through batch requests; example Jupyter notebooks showcasing how to use the API for cryptoasset investigations

* Attribution Tags: quality improvements; distinctions between entity- and address-level tags


<h2>
  Release GraphSense 0.4.5
  <small class="text-muted">(2020-11-19)</small>
</h2>

We are happy to announce that the fifth minor release (0.4.5) of the 0.4 series, has arrived.

This release provides

* a complete rewrite of its REST API, which now follows the [OpenAPI specification](https://www.openapis.org/).

* a [Python API Client](https://github.com/graphsense/graphsense-python) for conducting advanced analytics tasks

* a central repository ([graphsense-setup](https://github.com/graphsense/graphsense-setup)) for installing all required components using Docker Compose

As a response to the increasing number of requests for our semi-public demo, we also changed the access model. Before it was simple HTTP authentication, which was shared among all users. Now everyone who wants to work with the demo or use the API needs an API key, which can be requested per email (<a href="mailto:contact@ikna.io">contact@ikna.io</a>).


<h2>
  Release GraphSense 0.4.4
  <small class="text-muted">(2020-06-16)</small>
</h2>

We are happy to announce that the fourth minor release (0.4.4) of the 0.4 series, has arrived.

This release provides some bug fixes and minor enhancements, such as:

* A Tag Coherence score as an indicator for heuristic clustering reliability

* Automated connection of entities on the GraphSense Dashboard

* Audit trails can be exported as PDF report


<h2>
  Release GraphSense 0.4.3
  <small class="text-muted">(2020-05-11)</small>
</h2>

GraphSense 0.4.3, the third minor release of the 0.4 series, has arrived.

This release provides several bug fixes, enhancements, and minor features.

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