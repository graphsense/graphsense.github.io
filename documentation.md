---
layout: page
title: Blockchain Analytics Documentation & Setup Guide
nav_title: Documentation
description: Setup guides, tutorials, and FAQ for GraphSense, the open-source platform for blockchain and cryptoasset analytics. Self-host the stack or use the hosted service.
---

## About GraphSense and Iknaio

GraphSense is an open-source cryptoasset analytics platform, first developed in
2015 at the [Austrian Institute of Technology (AIT)](https://www.ait.ac.at) and
now maintained in collaboration with the
[Complexity Science Hub](https://www.csh.ac.at).

[Iknaio Cryptoasset Analytics GmbH](https://www.iknaio.com) was founded in 2021
by the creators of GraphSense. It provides GraphSense as a hosted service with
near real-time data updates and develops commercial extensions — such as
Pathfinder, CaseConnect, QuickLock, and TaxReport — built on top of the
open-source platform.

**In short:** GraphSense is the open-source software stack (MIT-licensed).
Iknaio is the company that operates, maintains, and extends it commercially.
Development is jointly driven by Iknaio, the Complexity Science Hub, and
AIT.

| | GraphSense | Iknaio |
|---|---|---|
| **What** | Open-source analytics platform | Commercial service & extensions |
| **License** | MIT | Proprietary (extensions) |
| **Access** | Self-hosted via [GitHub](https://github.com/graphsense) | Hosted at [app.iknaio.com](https://app.iknaio.com) / [api.iknaio.com](https://api.iknaio.com) |
| **Scope** | [graphsense-lib](https://github.com/graphsense/graphsense-lib) (analytics engine & REST API), [graphsense-dashboard](https://github.com/graphsense/graphsense-dashboard) (web UI), TagPacks | Pathfinder, CaseConnect, QuickLock, TaxReport, managed infrastructure |

## Getting Started

There are two ways to use GraphSense:

### Option 1: Hosted service (via Iknaio)

If you do not want to operate your own infrastructure, Iknaio provides
GraphSense-as-a-Service with near real-time data:

- **Dashboard:** [app.iknaio.com](https://app.iknaio.com)
- **REST API:** [api.iknaio.com](https://api.iknaio.com)
- **Request access:** Send an email to [contact@graphsense.org](mailto:contact@graphsense.org) explaining who you are and why you need access. You will receive an API key.

### Option 2: Self-hosted

The complete GraphSense software stack is available on
[GitHub](https://github.com/graphsense) under the MIT license. Self-hosting
gives you full data sovereignty and the ability to run custom analytics jobs.

GraphSense consists of two main components:

#### GraphSense Lib — Backend & Analytics Engine

[**graphsense-lib**](https://github.com/graphsense/graphsense-lib) is a Python
toolkit that powers the core of the GraphSense platform. It handles blockchain
data ingestion, transformation, and serves the REST API.

- **Data ingestion** from cryptocurrency nodes (UTXO- and account-based chains)
- **Data transformation** with delta-update support for near real-time operation
- **REST API** (FastAPI-based) for querying addresses, transactions, entities,
  and exchange rates
- **TagPack management** for cryptocurrency address attribution
- **Exchange-rate fetching** from multiple sources (CoinDesk, CoinMarketCap)

Requires Python ≥ 3.10 and a Cassandra cluster as storage backend.
Install via `uv add graphsense-lib[all]`.
See the [graphsense-lib README](https://github.com/graphsense/graphsense-lib)
for configuration and deployment details.

#### GraphSense Dashboard — Web Interface

[**graphsense-dashboard**](https://github.com/graphsense/graphsense-dashboard)
is a web-based GUI built in Elm for interactive cryptocurrency analysis. It
connects to a GraphSense REST API endpoint and runs entirely in the browser.

- **Interactive exploration** of addresses, transactions, and entities
- **Plugin system** for extending functionality with custom views
- **Custom themes** for branding and visual customisation
- **Docker support** for containerised deployment

Requires NodeJS. Run `make serve` for development or `make build` to produce a
production build. Docker Compose deployment is also supported.
See the [graphsense-dashboard README](https://github.com/graphsense/graphsense-dashboard)
for setup instructions.

#### Hardware Requirements

GraphSense processes billions of transactions and requires substantial
resources. In our production environment we use a Cassandra cluster with:

- 1 master node: AMD EPYC 2.85 GHz (24 cores), 256 GB RAM, 3 × 3.2 TB + 1 × 12.8 TB NVMe SSD
- 8 worker nodes: AMD EPYC 2.85 GHz (24 cores), 256 GB RAM, 3 × 3.2 TB NVMe SSD

All nodes are connected via bonded 40 Gbit ethernet.
A typical personal computer does not have sufficient resources for a full
deployment, but each component can be run individually in development mode.

## Tutorials

[Iknaio](https://www.iknaio.com) has produced tutorial videos demonstrating how
to use the GraphSense dashboard and API.

Check out the tutorials at: <https://www.iknaio.com/learning>

## Frequently Asked Questions

**Q: Can I run GraphSense in the cloud?**

Technically yes, but deployment procedures are currently designed for
on-premises environments and may require adaptation for cloud providers.
We run on-premises because we move large volumes of data (which gets expensive
in the cloud) and value full independence from third-party infrastructure.

**Q: Does GraphSense support real-time updates?**

Yes. Using the ingest and delta-update features of
[graphsense-lib](https://github.com/graphsense/graphsense-lib), a near
real-time system can be built. Update frequency depends on the operator — the
[Iknaio-hosted instance](https://www.iknaio.com) updates data near real-time.

**Q: How are entity and abuse types assigned to addresses?**

They are assigned manually via
[GraphSense TagPacks](https://github.com/graphsense/graphsense-tagpacks).
Labels and tags created by dashboard users are stored on the client side only
and are never sent to the server.

**Q: Who is funding GraphSense?**

Development relies on contributions from the core team at Iknaio, the
Complexity Science Hub, and AIT. It has also been supported by public research
grants including TITANIUM (EU Horizon 2020), VIRTCRIME (FFG KIRAS),
KRYPTOMONITOR (FFG KIRAS), and DeFiTrace (2023–2025).

**Q: I need a specific new feature — can you provide it?**

File a *feature request* issue in
[graphsense-lib](https://github.com/graphsense/graphsense-lib) or
[graphsense-dashboard](https://github.com/graphsense/graphsense-dashboard),
or write to [contact@graphsense.org](mailto:contact@graphsense.org).