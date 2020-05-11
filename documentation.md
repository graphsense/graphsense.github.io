---
title: Documentation
---

## Hardware Requirements

GraphSense can process hundreds of millions transactions and is therefore built on-top of [Apache Spark](spark) and [Cassandra](cassandra), which are highly scalable computing and analytics infrastructures.

In our production environment we use a Apache Spark/Cassandra cluster with the following Hardware components:

* 1 master node: DELL PowerEdge R740, 2×Intel Xeon 2.60GHz (14 cores), 320 GB RAM, 3×4TB HDD (Raid 5), 2×512GB SSD (Raid 0)

* 8 worker nodes: Supermicro 815TQC-R501WB, 2×Intel Xeon 1.7 GHz (6 cores), 256GB RAM, 4TB HDD, 3×2TB SSD

All nodes are connected via **10Gbit ethernet** interfaces and a corresponding switch. With this setup the computation time to create the address and entity graph using the transformation component is currently \~13h for Bitcoin.

In our previous setup we used just four worker nodes, which can be seen as minimal requirement to run the transformation pipeline for larger blockchains like Bitcoin.

## Setting up GraphSense

GraphSense is not a single piece of software but a highly modular analytics platform comprising several components. Each component provides a detailed README file, explaining how to set it up. 

Before setting up GraphSense, you should have a cluster up and running, with [Apache Spark][spark] and [Cassandra][cassandra] installed. Please refer to the corresponding documentation for further details.

If you want to setup the entire GraphSense platform, please follow this order:

1. Setup the cryptocurrency clients: [btc-client](https://github.com/graphsense/btc-client), [bch-client](https://github.com/graphsense/bch-client), [ltc-client](https://github.com/graphsense/ltc-client), [zec-client](https://github.com/graphsense/zec-client). Each repository provides a docker container encapsulating the most-recent cryptocurrency client versions.

2. Setup and run [graphsense-blocksci](https://github.com/graphsense/graphsense-blocksci) for ingesting raw blockchain transaction data and exchange into a dedicated Cassandra keyspace.

3. Use the [graphsense-tagpack-tool](https://github.com/graphsense/graphsense-tagpack-tool) for validating TagPacks and ingesting them into a dedicated Cassandra keyspace. You can use our [public TagPack collection](https://github.com/graphsense/graphsense-tagpacks) or your own, possibly private one.

4. After having ingested transaction data, exchange rates, and TagPacks into a *raw* Cassandra keyspace, you can now run the [graphsense-transformation](https://github.com/graphsense/graphsense-transformation) pipeline, which computes all sorts of statistics and various types of Graph abstractions and stores them in a so-called *transformed* keyspace. Running the transformation pipeline is a resource intensive task and can, depending your hardware infrastructure, take some time.

5. Having both a *raw* and *transformed* Cassandra in place, you can now run the [graphsense-REST](https://github.com/graphsense/graphsense-REST) against these keyspaces. This will expose the GraphSense REST API, which you can use in your client app.

6. Finally, when the REST interface is up and running, you can setup the [graphsense-dashboard](https://github.com/graphsense/graphsense-dashboard), which relies on the REST interface, and provides an interactive analytics interface.

## Frequently Asked Questions

#### Setup & Architecture

**Q: Why doesn't GraphSense run on my computer?**

GraphSense processes hundreds of millions transactions, which requires quite some RAM and disk space. Your computer most likely just doesn't have enough hardware resources for processing and storing vast amounts of transactions and derived statics. You can however, run each component in development mode, just as we do it. Please check the README files in each repository.

**Q: Can I run the GraphSense Dashboard without setting up an Apache Spark / Cassandra cluster?**

The GraphSense Dashboard is a Web-app running on the client side (in your browser) only. It just needs a GraphSense REST API endpoint for retrieving data. You can operate your own endpoint or reuse one provided by others. For playing around, you can also use or semi-public [GraphSense Demo](https://demo.graphsense.info).

**Q: How can I get access to the GraphSense demo?**

Just drop an email to [contact@graphsense.info](mailto:contact@graphsense.info) and briefly explain who you are and why you want access to our demo. You will receive access credentials and we will also sign you up for our public GraphSense users mailing list.

#### Governance & Organization

**Q: Who is behind GraphSense and who is driving development?**

GraphSense has a strong research background and development is mainly driven by GraphSense core team (see [About](about.html)). Members of this team are mostly scientists and engineers working for [AIT's Data Science and Artificial Intelligence Research Group](https://www.ait.ac.at/themen/data-science/).

**Q: Who is funding GraphSense?**

Currently GraphSense development relies on public research grants. Most importantly the EU H2020 project [TITANIUM](https://titanium-project.eu/) and the Austrian national research project [VIRTRCIME](https://virtcrime-project.info/).

**Q: Why don't you just some other existing cryptocurrency/blockchain analytics tool?**

GraphSense development is very much driven by the needs of our project partners and our own research needs. We found that no existing commercial tool fulfills the most important need, if you want to conduct more advanced cryptocurrency analysis: full control over collected data and the ability to run customized analytics jobs. GraphSense is very much designed for **data-driven cryptocurrency analytics**.

We do however use an existing open source tools: we wrapped and integrated [BlockSci](https://github.com/citp/BlockSci) in our pipeline.


[spark]: https://spark.apache.org/
[cassandra]: https://cassandra.apache.org/
