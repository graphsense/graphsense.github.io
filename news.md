---
layout: page
title: News & Releases
nav_title: News
description: Latest GraphSense releases, updates, and announcements. Stay informed about new features, supported cryptocurrencies, and platform improvements.
---

<h2>
  Release GraphSense 26.05
  <small class="text-muted">(2026-05-09)</small>
</h2>

This release introduces coinjoin and change address detection heuristics for UTXO transactions, along with mixing transaction visualization in the dashboard.

* Expand a transaction directly from the inputs/outputs table 
* 10 last recent changes are now saved and displayed
* New transaction filter component with tx-based quickfilters.
* Renamed "Sending/receiving addresses" to "Inputs/Outputs"
* Deprecated `/entities/` endpoints in favor of `/clusters/` 
* Cross-chain list shows a "more info" button that opens the public key table; collapsed cross-chain entries show three dots with a tooltip
* Plenty of fixes and minor improvements


<h2>
  Release GraphSense 26.04
  <small class="text-muted">(2026-04-10)</small>
</h2>

This release introduces coinjoin and change address detection heuristics for UTXO transactions, along with mixing transaction visualization in the dashboard.

* Coinjoin detection heuristics for UTXO transactions
* Change address detection heuristics with configurable options (<a href="https://www.iknaio.com/insights/change-detection/" target="_blank" rel="noopener">read more</a>)
* Mixing transaction detection and visualization in the dashboard
* Indirect tags support (tags inherited through cluster membership)
* Cross-chain address indicator on address nodes (<a href="https://www.iknaio.com/insights/cross-chain-kexy-reuse/" target="_blank" rel="noopener">read more</a>)
* Privacy analysis link for BTC transactions (<a href="https://www.iknaio.com/insights/address-types/" target="_blank" rel="noopener">read more</a>)
* Infinite scrolling tags table


<h2>
  Release GraphSense 26.03
  <small class="text-muted">(2026-03-12)</small>
</h2>

This release adds a new FastAPI-based REST API module and improves export workflows and cluster visualization in the dashboard.

* New FastAPI-based REST API module in graphsense-lib
* Unified export options dialog in the dashboard
* Highlight cluster sibling addresses on hover
* Supported token currencies loaded on startup
* Added Python 3.12 and 3.13 support, dropped Python 3.9


<h2>
  Release GraphSense 26.01
  <small class="text-muted">(2026-01-30)</small>
</h2>

This release brings a major dashboard UX overhaul with graph export capabilities, multi-node annotation, and Spanish language support.

* Export graph as PDF and PNG with web worker offloading for better performance
* Download graph transactions as CSV with fees
* Display both fiat and crypto values on graph
* Annotate multiple nodes at once
* Spanish translation added
* Improved collision detection and node spacing
* Better UTXO edge label readability


<h2>
  Release GraphSense 25.11
  <small class="text-muted">(2025-11-06)</small>
</h2>

This release introduces cross-chain tag derivation and improved search capabilities for flexible address lookups.

* Tags are now derived across chains when addresses share the same public key (<a href="https://www.iknaio.com/insights/cross-chain-kexy-reuse/" target="_blank" rel="noopener">read more</a>)
* Enhanced search with support for short address prefixes/postfixes (e.g., 0x33d0...8f65)
* New tag concepts: funder, deployer, white_list, black_list, gov_white_list
* Added schema migration support for Cassandra
* Improved tag summary with transformation support before digest computation


<h2>
  Release GraphSense 25.09
  <small class="text-muted">(2025-09-04)</small>
</h2>

This release adds a unified services layer and integrates tagpack-tool functionality directly into graphsense-lib.

* Added services layer moved from gs-rest for better code organization
* Integrated tagpack-tool and gs-tagstore-cli functionality
* Improved swap and bridge decoding support (<a href="https://www.iknaio.com/insights/tracing-dexs-bridges-cross-chain-clusters/" target="_blank" rel="noopener">read more</a>)
* THORChain bridge transaction handling


<h2>
  Release GraphSense 24.08
  <small class="text-muted">(2024-08-20)</small>
</h2>

This release modernizes the data pipeline with Delta Lake integration for more efficient raw data handling.

* Raw data export now uses Delta Lake instead of CSV for better performance
* Streamlined delta lake CLI commands for ingest and optimization
* Removed disk-cache dependency for cleaner architecture
* Direct Delta Lake access for Tron and Ethereum delta updates


<h2>
  Release GraphSense 24.01
  <small class="text-muted">(2024-01-22)</small>
</h2>

This release adds full support for the Tron network, including TRX and major tokens like USDT, USDC, and WTRX.

* Added Tron (TRX) blockchain support (<a href="https://www.iknaio.com/insights/iknaio-graphsense-v24-01-tron-network-update/" target="_blank" rel="noopener">read more</a>)
* Integrated USDT, USDC, and WTRX token tracking on Tron
* Extended multi-chain analytics capabilities


<h2>
  Release GraphSense 23.09
  <small class="text-muted">(2023-09-20)</small>
</h2>

This release focuses on usability improvements and simplified deployment procedures for easier setup and contribution.

* Resolved multiple usability issues reported by users
* Simplified development and deployment setup
* Improved system stability and resilience
* Enhanced documentation for contributors


<h2>
  Release GraphSense 23.06
  <small class="text-muted">(2023-06-30)</small>
</h2>

This release introduces the refreshed "Pathfinder" user interface along with additional attribution tags and backend stability improvements.

* Launched new "Pathfinder" dashboard interface
* Added new attribution tags
* Improved backend stability
* New add-ons for case deconfliction and automated tracing (for institutional users) (<a href="https://www.iknaio.com/insights/improving-cryptoasset-investigations-by-connecting-cases/" target="_blank" rel="noopener">read more</a>)


<h2>
  Release GraphSense 23.01
  <small class="text-muted">(2023-02-14)</small>
</h2>

This release adds support for major stablecoins on Ethereum and introduces smart contract visibility in the dashboard.

* Added USDT, USDC, and WETH token support on Ethereum
* Token flows now annotated alongside Ether flows in the UI
* Smart contracts marked with a cog symbol for easy identification
* Check out the [walk-through video](https://youtu.be/UukSvbAUIh4) for key changes


<h2>
  Release GraphSense 22.10
  <small class="text-muted">(2022-10-22)</small>
</h2>

This release introduces periodic blockchain synchronization and improves dashboard usability with new interaction features.

* Cryptoasset addresses now synchronized periodically with blockchains
* Updated Ethereum client for post-merge proof-of-stake compatibility
* Address-level tracing made more intuitive
* Node removal via DEL button
* Duplicate node shadows can be toggled on/off


<h2>
  Release GraphSense 1.0.0
  <small class="text-muted">(2022-07-15)</small>
</h2>

The first production release of GraphSense, featuring a completely rewritten dashboard and Ethereum integration.

* Complete dashboard rewrite enabling third-party add-ons
* Integration of Ethereum account-to-account transactions


<h2>
  Release GraphSense 0.5.2
  <small class="text-muted">(2022-03-30)</small>
</h2>

This release redesigns tagpack handling with a new TagStore architecture for faster and more flexible tag management.

* Tags now maintained in dedicated PostgreSQL datastore (replacing Cassandra)
* Multiple TagStores supported by the Dashboard
* Private TagPacks with restricted access now possible
* Faster TagPack availability (decoupled from transformations)


<h2>
  Release GraphSense 0.5.1
  <small class="text-muted">(2021-11-30)</small>
</h2>

This release brings performance enhancements, improved attribution tags, and compatibility with the Bitcoin Taproot upgrade.

* Dashboard: transaction inspection between entities, visible request limits, faster path search
* REST API: performance improvements, unified "bulk" interface for mass data retrieval (CSV + JSON)
* Transformation: faster statistics and graph computation, upgraded to Spark 3.1.2 and Cassandra 4
* Tags: confidence scores added, Wasabi and Samourai transactions integrated and tagged


<h2>
  Release GraphSense 0.5
  <small class="text-muted">(2021-06-01)</small>
</h2>

A major release adding Ethereum transaction analysis as the first step towards integrating account-model ledgers.

* Ethereum transaction analysis support
* Dashboard: colored transaction path marking, faster path search, local in-browser tag store
* REST API: faster batch requests, example Jupyter notebooks for investigations
* Tags: quality improvements, entity- and address-level tag distinctions


<h2>
  Release GraphSense 0.4.5
  <small class="text-muted">(2020-11-19)</small>
</h2>

This release introduces a complete REST API rewrite following the OpenAPI specification and a new Python client.

* REST API rewritten to follow [OpenAPI specification](https://www.openapis.org/)
* [Python API Client](https://github.com/graphsense/graphsense-python) for advanced analytics
* Central [graphsense-setup](https://github.com/graphsense/graphsense-setup) repository for Docker Compose installation
* New API key-based access model (request via <a href="&#109;&#97;&#105;&#108;&#116;&#111;&#58;&#99;&#111;&#110;&#116;&#97;&#99;&#116;&#64;&#103;&#114;&#97;&#112;&#104;&#115;&#101;&#110;&#115;&#101;&#46;&#111;&#114;&#103;">contact&#64;graphsense&#46;org</a>)


<h2>
  Release GraphSense 0.4.4
  <small class="text-muted">(2020-06-16)</small>
</h2>

This release adds Tag Coherence scoring and improved entity visualization features.

* Tag Coherence score for heuristic clustering reliability
* Automated entity connection on the Dashboard
* Audit trails exportable as PDF reports


<h2>
  Release GraphSense 0.4.3
  <small class="text-muted">(2020-05-11)</small>
</h2>

This release brings address annotation, TagPack management, and infrastructure improvements.

**Dashboard:**
* Address annotation with TagPack import/export
* Local investigation logging for court-proof evidence
* Transaction details in entity graph relations
* Cross-ledger address/entity statistics
* Fine-grained path search conditions (e.g., totalReceived)

**TagPacks:**
* [INTERPOL Dark Web and Virtual Assets](https://interpol-innovation-centre.github.io/DW-VA-Taxonomy/) taxonomy concepts
* Dedicated [TagPack Management Tool](https://github.com/graphsense/graphsense-tagpack-tool)

**Infrastructure:**
* Docker Compose build and deployment
* Upgraded to Scala 2.12, Spark 2.4.5
* Clustering library reintegrated into transformation
