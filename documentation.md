---
title: Documentation
---

<h2 class="mt-3">Setup and Installation</h2>

<h4>Requirements</h4>

GraphSense can process hundreds of millions of transactions and therefore builds on top of [Apache Spark](spark) and [Cassandra](cassandra), which are highly scalable computing and analytics infrastructures.s

In our production environment, we use an Apache Spark/Cassandra cluster with the following Hardware components:

* 1 master node: DELL PowerEdge R740, 2×Intel Xeon 2.60GHz (14 cores), 320 GB RAM, 3×4TB HDD (Raid 5), 2×512GB SSD (Raid 0)

* 8 worker nodes: Supermicro 815TQC-R501WB, 2×Intel Xeon 1.7 GHz (6 cores), 256GB RAM, 4TB HDD, 3×2TB SSD

All nodes are connected via **10Gbit ethernet** interfaces and a corresponding switch. With this setup,  the computation time to create the address and entity graph using the transformation component is currently \~13h for Bitcoin.

In our previous setup, we used just four worker nodes, which can be seen as a minimal requirement to run the transformation pipeline for larger blockchains like Bitcoin.

<h4>Setting up the Software</h4>

To be able to set up GraphSense with all its components more efficiently on a cluster, we offer a central repository ([graphsense-setup](https://github.com/graphsense/graphsense-setup)) to control the setup procedure.

<h2 class="mt-3">Frequently Asked Questions</h2>

<h4>Setup & Architecture</h4>

**Q: Can I run GraphSense on my local computer or a Raspberry Pi?**

GraphSense processes hundreds of millions of transactions and requires quite some RAM and disk space. Unfortunately, your computer most likely doesn't have enough hardware resources for processing and storing vast amounts of transactions and derived statics. You can, however, run each component in development mode, just as we do it. Please check the README files in each repository.s

**Q: Can I run the GraphSense Dashboard without setting up an Apache Spark / Cassandra cluster?**

The GraphSense Dashboard is a Web-app running on the client-side (in your browser) only. It just needs a GraphSense REST API endpoint for retrieving data. You can operate your endpoint or reuse one provided by others.


**Q: Can I run GraphSense in the cloud?**

Technically yes, but we have not tested it yet, and most likely, it requires some tweaks in the deployment procedures, which are currently designed for on-premises deployment only.

**Q: Why are you running GraphSense on-premise and not in the cloud**

Because we use GraphSense for advanced (research) analysis tasks and move a lot of data, which can quickly get, very expensive in the cloud. We also believe that complete data control and autonomy also require a certain degree of independence from third-party hardware and software services in the long term.

**Q: How can I get access to the GraphSense demo?**

Just drop an email to [contact@ikna.io](mailto:contact@ikna.io) and briefly explain **who** you are and **why** you want access to our demo. You will receive access credentials, and we will also sign you up for our public GraphSense users mailing list.

<h4>Operation</h4>

**Q: How often is the data updated?**

That depends on how often you parse and ingest relevant raw data (blockchains, exchange rates, etc.) and subsequently run the transformation procedure. The [GraphSense Lib](https://github.com/graphsense/graphsense-lib) repository allows to do contentious updates without running the full transformation (see delta-updates). We currently trigger this manually for demo purposes, but it could be automated using a cron job.

**Q: Does GraphSense support real-time updates?**

Using the ingest and delta-update features of [GraphSense Lib](https://github.com/graphsense/graphsense-lib) a near real-time system can be built.

**Q: How are entity and abuse types assigned to addresses?**

They are assigned manually via [GraphSense TagPacks](https://github.com/graphsense/graphsense-tagpacks).

**Q: How does GraphSense use the labels and categories provided by the dashboard users**

Not at all because labels, tags, and categories assigned by the user are not sent back to the server. They are only stored on the client-side and not used in any way on the server-side.

<h4>Governance & Organization</h4>

**Q: Who is behind GraphSense, and who is driving development?**

GraphSense has a strong research background, and development is mainly driven by the GraphSense core team.

**Q: Who is funding GraphSense?**

Currently, GraphSense development relies on funds from the Austrian national research project [KRYPTOMONITOR](https://kryptomonitor-project.info/). Previously it received research funding from the EU H2020 project [TITANIUM](https://titanium-project.eu/) and the Austrian national research project [VIRTRCIME](https://virtcrime-project.info/).

**Q: Why don't you just use some other existing cryptocurrency/blockchain analytics tool?**

GraphSense development is very much driven by the needs of our project partners and our own research needs. We found that no existing commercial tool fulfills the most important need if you want to conduct more advanced cryptocurrency analysis: complete control over collected data and the ability to run customized analytics jobs. Therefore, GraphSense is very much designed for **data-driven cryptocurrency analytics**.

**Q: I need a specific new feature, can you provide it?**

First of all, let us know what you need, ideally by filing a *feature request* issue in the relevant repository, probably the [GraphSense Dashboard](https://github.com/graphsense/graphsense-dashboard) or the [GraphSense API](https://github.com/graphsense/graphsense-openapi). Alternatively, you can write an email to [contact@ikna.io](mailto:contact@ikna.io).

Whether we can implement a feature request depends on whether it fits into our plan or not. That, in turn, depends on the research funding model we are currently working on.

[spark]: https://spark.apache.org/
[cassandra]: https://cassandra.apache.org/
