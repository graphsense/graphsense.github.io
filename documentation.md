---
layout: page
title: Documentation
description: GraphSense documentation, setup guides, tutorials, and FAQ. Learn how to use the open-source cryptoasset analytics platform or access the hosted service.
---

## About GraphSense and Iknaio

GraphSense is an open-source cryptoasset analytics platform, first developed in
2015 at the [Austrian Institute of Technology (AIT)](https://www.ait.ac.at) and
now maintained in collaboration with the
[Complexity Science Hub Vienna](https://www.csh.ac.at).

[Iknaio Cryptoasset Analytics GmbH](https://www.iknaio.com) was founded in 2021
by the creators of GraphSense. It provides GraphSense as a hosted service with
near real-time data updates and develops commercial extensions — such as
Pathfinder, CaseConnect, QuickLock, and TaxReport — built on top of the
open-source platform.

**In short:** GraphSense is the open-source software stack (MIT-licensed).
Iknaio is the company that operates, maintains, and extends it commercially.
Development is jointly driven by Iknaio, the Complexity Science Hub Vienna, and
AIT.

| | GraphSense | Iknaio |
|---|---|---|
| **What** | Open-source analytics platform | Commercial service & extensions |
| **License** | MIT | Proprietary (extensions) |
| **Access** | Self-hosted via [GitHub](https://github.com/graphsense) | Hosted at [app.iknaio.com](https://app.iknaio.com) / [api.iknaio.com](https://api.iknaio.com) |
| **Scope** | Core analytics engine, REST API, dashboard, TagPacks | Pathfinder, CaseConnect, QuickLock, TaxReport, managed infrastructure |

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

See the [Setup and Installation](#setup-and-installation) section below for
hardware requirements and deployment guidance.

## Tutorials

[Iknaio](https://www.iknaio.com) has produced tutorial videos demonstrating how
to use the GraphSense dashboard and API.

Check out the tutorials at: <https://www.iknaio.com/learning>

## Setup and Installation

### Requirements

GraphSense must process billions of transactions and therefore builds on top of
[Apache Spark](https://spark.apache.org/) and
[Cassandra](https://cassandra.apache.org/), which are highly scalable computing
and analytics infrastructures.

In our production environment, we use an Apache Spark/Cassandra cluster with the
following hardware components:

- 1 master node: AMD Single-CPU Server, AMD EPYC 2.85 GHz (24 cores), 256 GB RAM, 3 × 3.2 TB NVMe SSD, 1 × 12.8 TB NVMe SSD
- 8 worker nodes: AMD Single-CPU Server, AMD EPYC 2.85 GHz (24 cores), 256 GB RAM, 3 × 3.2 TB NVMe SSD

All nodes are connected via bonded 40Gbit ethernet interfaces and a
corresponding switch.

If you do not want to host GraphSense yourself, consider using the
[hosted service offered by Iknaio](#option-1-hosted-service-via-iknaio).

## Frequently Asked Questions

### Setup & Architecture

**Q: Can I run GraphSense on my local computer or a Raspberry Pi?**

GraphSense processes billions of transactions and requires substantial RAM and
disk space. A typical personal computer does not have sufficient hardware
resources. You can, however, run each component in development mode. Please
check the README files in each
[repository](https://github.com/graphsense).

**Q: Can I run the GraphSense Dashboard without setting up an Apache Spark / Cassandra cluster?**

The GraphSense Dashboard is a web application running on the client side (in
your browser). It only needs a GraphSense REST API endpoint for retrieving data.
You can operate your own endpoint or use the one provided by
[Iknaio](https://www.iknaio.com).

**Q: Can I run GraphSense in the cloud?**

Technically yes, but deployment procedures are currently designed for
on-premises environments and may require adaptation for cloud providers.

**Q: Why do you run GraphSense on-premises and not in the cloud?**

We use GraphSense for advanced research analysis tasks and move large volumes of
data, which can become expensive in cloud environments. We also consider that
complete data control and autonomy require a degree of independence from
third-party infrastructure in the long term.

### Operation

**Q: How often is the data updated?**

GraphSense is software; update frequency depends on the operator. The
[Iknaio-hosted instance](https://www.iknaio.com) updates data near real-time.

**Q: Does GraphSense support real-time updates?**

Yes. Using the ingest and delta-update features of
[GraphSense Lib](https://github.com/graphsense/graphsense-lib), a near
real-time system can be built.

**Q: How are entity and abuse types assigned to addresses?**

They are assigned manually via
[GraphSense TagPacks](https://github.com/graphsense/graphsense-tagpacks).

**Q: How does GraphSense use the labels and categories provided by dashboard users?**

It does not. Labels, tags, and categories assigned by the user are stored on the
client side only and are never sent to the server.

### Governance & Organisation

**Q: Who is behind GraphSense, and who is driving development?**

GraphSense has a strong research background. Development is driven by the
GraphSense core team, whose members work for
[Iknaio Cryptoasset Analytics GmbH](https://www.iknaio.com), the
[Complexity Science Hub Vienna](https://www.csh.ac.at), and the
[AIT — Austrian Institute of Technology](https://www.ait.ac.at). Iknaio was
founded in 2021 by the creators of GraphSense and provides the platform as a
hosted service along with commercial extensions.

**Q: Who is funding GraphSense?**

GraphSense development relies on contributions from its core developers at
Iknaio, the Complexity Science Hub Vienna, and AIT. Historically, development
has been supported by a series of public research grants:

- **GraphSense** (2015–2017) — FFG IKT der Zukunft
- **TITANIUM** (2017–2020) — EU Horizon 2020
- **VIRTCRIME** (2018–2020) — FFG KIRAS
- **KRYPTOMONITOR** — FFG KIRAS
- **DeFiTrace** (2023–2025)

**Q: Why not use an existing cryptocurrency analytics tool?**

GraphSense development is driven by the needs of project partners and our own
research. No existing commercial tool provides the combination we consider
essential for advanced analysis: complete control over collected data and the
ability to run customised analytics jobs. GraphSense is designed for
data-driven cryptoasset analytics.

**Q: I need a specific new feature — can you provide it?**

Let us know what you need, ideally by filing a *feature request* issue in the
relevant repository (e.g., the
[GraphSense Dashboard](https://github.com/graphsense/graphsense-dashboard) or
the [GraphSense REST API](https://github.com/graphsense/graphsense-REST)).
Alternatively, write to
[contact@graphsense.org](mailto:contact@graphsense.org). Whether we can
implement a feature depends on whether it aligns with our research and
development roadmap.