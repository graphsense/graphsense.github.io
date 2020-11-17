---
title: Documentation
---

<h2>Overview</h2>

The following video gives an overview what GraphSense is about, what you can do with this platform and into which direction we are going to develop it further.

<div class="container mb-2">
  <p class="text-center m-auto">
		<iframe width="560" height="315" src="https://www.youtube.com/embed/H41LrA3NCo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </p>
</div>

If you would like to play around with our GraphSense Demo instance, please drop an email to <a href="mailto:contact@graphsense.info">contact@graphsense.info</a>.

<h2 class="mt-3">Tutorials</h2>

GraphSense supports simple analysis methods with low entry barriers via the GraphSense dashboard, as well as the possibility to carry out advanced analyzes via an API.

<div class="container">
  <p style="color:red" class="text-center m-auto">
  	TODO (Bernhard): link 5min video explaining simple analytics via the dashboard
  </p>
</div>

<div class="container">
  <p style="color:red" class="text-center m-auto">
  	TODO (Matteo): link 5min video explaining advanced analytics via the API
  </p>
</div>


<h2 class="mt-3">Setup and Installation</h2>

<h4>Hardware Requirements</h4>

GraphSense can process hundreds of millions transactions and is therefore built on-top of [Apache Spark](spark) and [Cassandra](cassandra), which are highly scalable computing and analytics infrastructures.

In our production environment we use a Apache Spark/Cassandra cluster with the following Hardware components:

* 1 master node: DELL PowerEdge R740, 2×Intel Xeon 2.60GHz (14 cores), 320 GB RAM, 3×4TB HDD (Raid 5), 2×512GB SSD (Raid 0)

* 8 worker nodes: Supermicro 815TQC-R501WB, 2×Intel Xeon 1.7 GHz (6 cores), 256GB RAM, 4TB HDD, 3×2TB SSD

All nodes are connected via **10Gbit ethernet** interfaces and a corresponding switch. With this setup the computation time to create the address and entity graph using the transformation component is currently \~13h for Bitcoin.

In our previous setup we used just four worker nodes, which can be seen as minimal requirement to run the transformation pipeline for larger blockchains like Bitcoin.

<h4>Setting up the Software</h4>

In order to be able to set up GraphSense with all its components more easily on a cluster, we offer a central repository ([graphsense-setup](https://github.com/graphsense/graphsense-setup)) through which the setup can be controlled. There you will also find further documentation on the setup procedure.

<h2 class="mt-3">Frequently Asked Questions</h2>

<h4>Setup & Architecture</h4>

**Q: Can I run GraphSense on my local computer or a Raspberry Pi?**

GraphSense processes hundreds of millions transactions, which requires quite some RAM and disk space. Your computer most likely just doesn't have enough hardware resources for processing and storing vast amounts of transactions and derived statics. You can however, run each component in development mode, just as we do it. Please check the README files in each repository.

**Q: Can I run the GraphSense Dashboard without setting up an Apache Spark / Cassandra cluster?**

The GraphSense Dashboard is a Web-app running on the client side (in your browser) only. It just needs a GraphSense REST API endpoint for retrieving data. You can operate your own endpoint or reuse one provided by others. For playing around, you can also use or semi-public [GraphSense Demo](https://demo.graphsense.info).

**Q: How can I get access to the GraphSense demo?**

Just drop an email to [contact@graphsense.info](mailto:contact@graphsense.info) and briefly explain **who** you are and **why** you want access to our demo. You will receive access credentials and we will also sign you up for our public GraphSense users mailing list.

<h4>Governance & Organization</h4>

**Q: Who is behind GraphSense and who is driving development?**

GraphSense has a strong research background and development is mainly driven by GraphSense core team (see [About](about.html)). Members of this team are mostly scientists and engineers working for [AIT's Data Science and Artificial Intelligence Research Group](https://www.ait.ac.at/themen/data-science/).

**Q: Who is funding GraphSense?**

Currently GraphSense development relies on public research grants. Most importantly the EU H2020 project [TITANIUM](https://titanium-project.eu/) and the Austrian national research projects [VIRTRCIME](https://virtcrime-project.info/) and [KRYPTOMONITOR](https://kryptomonitor-project.info/).

**Q: Why don't you just some other existing cryptocurrency/blockchain analytics tool?**

GraphSense development is very much driven by the needs of our project partners and our own research needs. We found that no existing commercial tool fulfills the most important need, if you want to conduct more advanced cryptocurrency analysis: full control over collected data and the ability to run customized analytics jobs. GraphSense is very much designed for **data-driven cryptocurrency analytics**.

We do, however, make use of an existing open source tool: we wrapped and integrated [BlockSci](https://github.com/citp/BlockSci) in our pipeline.

**Q: I need a certain new feature, can you provide it?**

First of all, let us know what you need, ideally by filing a *feature request* issue in the relevant repository, probably the [GraphSense Dashboard](https://github.com/graphsense/graphsense-dashboard) or the [GraphSense API](https://github.com/graphsense/graphsense-openapi). Alternatively, you can write an email to [contact@graphsense.info](mailto:contact@graphsense.info).

Whether we can implement a feature request depends on whether it fits into our agenda or not. That in turn depends on the research funding model we are currently working on.


[spark]: https://spark.apache.org/
[cassandra]: https://cassandra.apache.org/