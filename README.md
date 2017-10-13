## Features

GraphSense is an open source platform for analyzing cryptocurrencies
such as [Bitcoin][bitcoin].

- **Address Clustering**: partition the set of addresses observed in a cryptocurrency
ecosystem into maximal subsets (clusters) that are likely to be controlled by the same
real-world entity.

- **Micro- and Macroscopic Analysis**: inspect main cryptocurrency entities
(block, transaction, address) and compute summary statistics over the entire
blockchain.

- **Network Perspective**: apply a network-centric perspective and traverse currency
flows between addresses and clusters.

- **Horizontal Scalability**: cryptocurrency blockchains [are growing][blockchain.info]
and new currencies [appear on the horizon][coinmarketcap]. To make GraphSense
future-proof, it is built on [Apache Spark][spark] and [Cassandra][cassandra] for
horizontal scalability.

## Example

The following example shows details about an example Bitcoin address.

![screenshot](assets/screenshot_dashboard.jpeg)


## Technical Architecture

GraphSense provides a number of software components:

- [dashboard][dashboard]: a user-interface allowing search, inspection, and traversal of cryptocurrency entities

- [rest-api][rest-api]: an API for retrieving data from the underlying Cassandra store

- [transformation][transformation]: a Spark pipeline for computing statistics and network representations from raw blockchain data stored in Cassandra.

- [datafeed][datafeed]: a component for ingesting raw blockchain data and exchange rates into Cassandra

- [bitcoin-client][bitcoin-client]: a Docker container encapsuling the most-recent Bitcoin client version


## Publications

Some more technical details about GraphSense are described [here](http://www.graphsense.info/wp-content/uploads/2016/09/2016_SEMANTICS_Bitcoin_Where_Art_Thou.pdf); please cite as:

    @inproceedings{Haslhofer:2016a,
        title={O Bitcoin Where Art Thou? Insight into Large-Scale Transaction Graphs.},
        author={Haslhofer, Bernhard and Karl, Roman and Filtz, Erwin},
        booktitle={SEMANTiCS (Posters, Demos)},
        year={2016}
    }


So far, has been used for computing statistics in the following
scientific papers:

Filtz, E., Polleres, A., Karl, R., Haslhofer, B.:
**Evolution of the Bitcoin Address Graph - An Exploratory Longitudinal Study.**
International Data Science Conference (DSC 2017), Salzburg, Austria, 2017.
[(pdf)](https://aic.ai.wu.ac.at/~polleres/publications/filtz-etal-2017IDSC.pdf)

## Contributors

- [Bernhard Haslhofer](http://bernhardhaslhofer.info/)
- Roman Karl
- Mihai Bartha
- Rainer Stütz


[bitcoin]: https://bitcoin.org/en/
[spark]: https://spark.apache.org/
[cassandra]: http://cassandra.apache.org/
[blockchain.info]: https://blockchain.info/charts/blocks-size?timespan=all
[coinmarketcap]: https://coinmarketcap.com/

[bitcoin-client]: https://github.com/graphsense/bitcoin-client
[datafeed]: https://github.com/graphsense/graphsense-datafeed
[transformation]: https://github.com/graphsense/graphsense-transformation
[rest-api]: https://github.com/graphsense/graphsense-REST
[dashboard]: https://github.com/graphsense/graphsense-dashboard



