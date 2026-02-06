---
layout: home
title: Home
---

{:.lead .text-center}
GraphSense is a cryptoasset analytics platform emphasizing full data sovereignty, algorithmic transparency, and scalability. GraphSense is open-source and free. It provides a dashboard for interactive investigations and, more importantly, complete data control for automatizing cryptoasset analytics workflows.

## Origin & Background

GraphSense originated in 2015 as a publicly funded research project at the [Austrian Institute of Technology (AIT)](https://www.ait.ac.at){:target="_blank"}, led by [Bernhard Haslhofer](https://bernhardhaslhofer.info/){:target="_blank"} as Principal Investigator. Since then, development has been carried out in collaboration with the [Complexity Science Hub](https://www.csh.ac.at){:target="_blank"} and has been supported by several public funding programs, including the Austrian FFG ([IKT der Zukunft](https://iktderzukunft.at/en/projects/graph-sense.php){:target="_blank"}, [KIRAS](https://www.kiras.at/){:target="_blank"}), and the EU Horizon 2020 program ([TITANIUM](https://www.titanium-project.eu/){:target="_blank"}).

In 2021, the core development team founded [Iknaio Cryptoasset Analytics GmbH](https://www.iknaio.com){:target="_blank"} to provide GraphSense as a hosted service with near real-time data updates and to develop additional operational tools — such as [Pathfinder](https://www.iknaio.com/platform){:target="_blank"}, [CaseConnect](https://www.iknaio.com/platform#caseconnect){:target="_blank"}, and [QuickLock](https://www.iknaio.com/platform#quicklock){:target="_blank"} — on top of the open-source platform.

GraphSense itself remains fully open-source and [MIT-licensed](https://github.com/graphsense){:target="_blank"}. Iknaio is the commercial service and development partner; the two are complementary, not competing.

## Supported Assets

{:.lead .text-center .mb-5}
The GraphSense system design supports UTXO- (e.g., Bitcoin) and account-model (e.g., Ethereum, Tron) ledgers. Currently, adapters are available for major cryptocurrencies like Bitcoin, Bitcoin Cash, Litecoin, Zcash, Ethereum and Tron. Additional ledgers can be integrated by implementing a lightweight adapter component.

<div class="container">
  <div class="row" style="justify-content:center">
    {% for currency in site.data.currencies %}
      {% assign curr = currency[0] %}
      {% assign stats=currency[1] %}
      {% include currency.html stats=stats currency=curr %}
    {% endfor %}
  </div>
</div>

## Features

<ul class="container features d-flex flex-row flex-wrap w-100">
{% for feature in site.data.features %}
  <li><i class="{{feature.collection | default: "fa" }} fa-{{ feature.icon }}"></i> <strong>{{ feature.heading }}</strong> <div class="lead">{{ feature.text }}</div></li>
{% endfor %}
</ul>

## System Description / White paper

Haslhofer, B., Stütz, R., Romiti, M., & King, R. (2021). **GraphSense: A general-purpose cryptoasset analytics platform.** arXiv preprint. [(pdf)](https://arxiv.org/abs/2102.13613)

```bibtex
@article{Haslhofer:2021a,
  title = {GraphSense: A General-Purpose Cryptoasset Analytics Platform},
  author = {Bernhard Haslhofer and Rainer Stütz and Matteo Romiti and Ross King},
  year = {2021},
  journal = {arXiv preprint},
  url = {https://arxiv.org/abs/2102.13613}
}
```

## Scientific Studies

GraphSense has already supported several scientific studies:

Stütz, R., Stifter, N., Dragaschnig, M., Haslhofer, B., & Judmayer, A. (2026). **Reuse of Public Keys Across UTXO and Account-Based Cryptocurrencies.** arXiv preprint. [(pdf)](https://arxiv.org/abs/2601.19500)

Avice, R., Haslhofer, B., Li, Z., & Zhou, J. (2026). **Linking cryptoasset attribution tags to knowledge graph entities: An LLM-based approach.** Financial Cryptography and Data Security (FC 2026). [(pdf)](https://fc25.ifca.ai/preproceedings/74.pdf)

Saggese, P., Segalla, E., Sigmund, M., Raunig, B., Zangerl, F., & Haslhofer, B. (2024). **Assessing the solvency of virtual asset service providers: Are current standards sufficient?** Applied Economics. [(pdf)](https://www.tandfonline.com/doi/abs/10.1080/00036846.2024.2396640)

Niedermayer, T., Saggese, P., & Haslhofer, B. (2024). **Detecting financial bots on the Ethereum blockchain.** Companion Proceedings of the ACM Web Conference 2024. [(pdf)](https://doi.org/10.1145/3589335.3651959)

Haslhofer, B., Hanslbauer, C., Fröwis, M., & Goger, T. (2023). **Increasing the efficiency of cryptoasset investigations by connecting the cases.** APWG Symposium on Electronic Crime Research (eCrime 2023). [(pdf)](https://docs.apwg.org/ecrimeresearch/2023/20240328851329400.pdf)

Stütz, R., Stockinger, J., Haslhofer, B., Moreno-Sanchez, P., & Maffei, M. (2022). **Adoption and actual privacy of decentralized CoinJoin implementations in bitcoin.** Proceedings of the 4th ACM Conference on Advances in Financial Technologies (AFT 2022). [(pdf)](https://arxiv.org/abs/2109.10229)

Kappos, G., Yousaf, H., Stütz, R., Rollet, S., Haslhofer, B., & Meiklejohn, S. (2022). **How to peel a million: Validating and expanding bitcoin clusters.** 31st USENIX Security Symposium (USENIX Security 22). [(pdf)](https://www.usenix.org/conference/usenixsecurity22/presentation/kappos)

Romiti, M., Victor, F., Moreno-Sanchez, P., Nordholt, P., Haslhofer, B., & Maffei, M. (2021). **Cross-layer deanonymization methods in the lightning protocol.** Financial Cryptography and Data Security (FC 2021). [(pdf)](https://arxiv.org/abs/2007.00764)

Stütz, R., Gaži, P., Haslhofer, B., & Illum, J. (2020). **Stake shift in major cryptocurrencies: An empirical study.** Financial Cryptography and Data Security (FC 2020). [(pdf)](https://arxiv.org/abs/2001.04187)

Paquet-Clouston, M., Romiti, M., Haslhofer, B., & Charvat, T. (2019). **Spams meet Cryptocurrencies: Sextortion in the Bitcoin Ecosystem.** Advances in Financial Technologies (AFT 2019). [(pdf)](https://arxiv.org/abs/1908.01051)

Romiti, M., Judmayer, A., Zamyatin, A., & Haslhofer, B. (2019). **A Deep Dive into Bitcoin Mining Pools: An Empirical Analysis of Mining Shares.** Workshop on the Economics of Information Security (WEIS 2019). [(pdf)](https://arxiv.org/abs/1905.05999)

Paquet-Clouston, M., Haslhofer, B., & Dupont, B. (2019). **Ransomware payments in the bitcoin ecosystem.** Journal of Cybersecurity, 5(1). [(pdf)](https://arxiv.org/abs/1804.04080)

Filtz, E., Polleres, A., Karl, R., & Haslhofer, B. (2017). **Evolution of the Bitcoin Address Graph - An Exploratory Longitudinal Study.** International Data Science Conference (DSC 2017). [(pdf)](https://aic.ai.wu.ac.at/~polleres/publications/filtz-etal-2017IDSC.pdf)

## Core Team

Bernhard Haslhofer, [Complexity Science Hub Vienna](https://www.csh.ac.at/){:target="_blank"}

Rainer Stütz, [Complexity Science Hub Vienna](https://www.csh.ac.at/){:target="_blank"}

Matthias Rella, [Iknaio Cryptoasset Analytics GmbH](https://www.iknaio.com/){:target="_blank"}

Michael Fröwis, [Iknaio Cryptoasset Analytics GmbH](https://www.iknaio.com/){:target="_blank"}

Thomas Niedermayer, [Iknaio Cryptoasset Analytics GmbH](https://www.iknaio.com/){:target="_blank"}
