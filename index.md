---
layout: home
title: Home
---

<div class="container mt-3">
  <p class="lead text-center">
    GraphSense is a cryptoasset analytics platform emphasizing full data sovereignty, algorithmic transparency, and scalability. GraphSense is open-source and free. It provides a dashboard for interactive investigations and, more importantly, complete data control for automatizing cryptoasset analytics workflows.
  </p>
</div>

## Supported Assets

<div class="container">

  <p class="lead mb-5 text-center">The GraphSense system design supports UTXO- (e.g., Bitcoin) and account-model (e.g., Ethereum) ledgers. Currently, adapters are available for major cryptocurrencies like Bitcoin, Bitcoin Cash, Litecoin, Zcash, and Ethereum. Additional ledgers can be integrated by implementing a lightweight adapter component.</p>

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

<div class="container">

  <p>Haslhofer, B., Stütz, R., Romiti, M., & King, R. (2021). GraphSense: A general-purpose cryptoasset analytics platform. Arxiv pre-print.
  <a href="https://arxiv.org/abs/2102.13613">(pdf)</a></p>

  <div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>@article{Haslhofer:2021a,
    title = {GraphSense: A General-Purpose Cryptoasset Analytics Platform}, 
    author = {Bernhard Haslhofer and Rainer Stütz and Matteo Romiti and Ross King},
    year = {2021},
    journal = {Arxiv pre-print},
    url = {https://arxiv.org/abs/2102.13613}
  }
  </code></pre></div></div>
</div>


## Scientific Studies

<div class="container">

  <p>GraphSense has already supported several scientific studies:</p>

  <p>Stütz, R., Stockinger, J., Haslhofer, B., Moreno-Sanchez, P., & Maffei, M. (2022). <strong>Adoption and actual privacy of decentralized CoinJoin implementations in bitcoin.</strong> Proceedings of the 4st ACM conference on advances in financial technologies, AFT 2022, boston, september 19-22, 2022.
  <a href="https://arxiv.org/abs/2109.10229">(pdf)</a></p>

  <p>Kappos, G., Yousaf, H., Stütz, R., Rollet, S., Haslhofer, B., & Meiklejohn, S. (2022). <strong>How to peel a million: Validating and expanding bitcoin clusters.</strong> 31st USENIX security symposium (USENIX security 22).
  <a href="https://www.usenix.org/conference/usenixsecurity22/presentation/kappos">(pdf)</a></p>

  <p>Romiti, M., Victor, F., Moreno-Sanchez, P., Nordholt, P., Haslhofer, B., & Maffei, M. (2021). <strong>Cross-layer deanonymization methods in the lightning protocol.</strong> Financial cryptography and data security (FC 2021).
  <a href="https://arxiv.org/abs/2007.00764">(pdf)</a></p>

  <p>Stütz, R., Gaži, P., Haslhofer, B., & Illum, J. (2020). <strong>Stake shift in major cryptocurrencies: An empirical study.</strong> Financial cryptography and data security (FC 2020).
  <a href="https://arxiv.org/abs/2001.04187">(pdf)</a></p>

  <p>Paquet-Clouston, M., Romiti, M., Haslhofer, B., Charvat, T.
  <strong>Spams meet Cryptocurrencies: Sextortion in the Bitcoin Ecosystem</strong>
  Advances in Financial Technologies, 2019.
  <a href="https://arxiv.org/abs/1908.01051">(pdf)</a></p>

  <p>Romiti, M., Judmayer, A., Zamyatin, A., Haslhofer, B.
  <strong>A Deep Dive into Bitcoin Mining Pools: An Empirical Analysis of Mining Shares.</strong>
  Workshop on the Economics of Information Security, 2019.
  <a href="https://arxiv.org/abs/1905.05999">(pdf)</a></p>

  <p>Paquet-Clouston, M., Haslhofer, B., & Dupont, B.
  <strong>Ransomware payments in the bitcoin ecosystem.</strong>
  Journal of Cybersecurity, 5 (1).
  <a href="http://arxiv.org/abs/1804.04080">(pdf)</a></p>

  <p>Filtz, E., Polleres, A., Karl, R., Haslhofer, B.:
  <strong>Evolution of the Bitcoin Address Graph - An Exploratory Longitudinal Study.</strong>
  International Data Science Conference (DSC 2017), Salzburg, Austria, 2017.
  <a href="https://aic.ai.wu.ac.at/~polleres/publications/filtz-etal-2017IDSC.pdf">(pdf)</a></p>
</div>

## Core Team

<div class="container">
  <ul>
    <li>Bernhard Haslhofer, <a href="https://www.csh.ac.at/" target="_blank">Complexity Science Hub Vienna</a></li>
    <li>Rainer Stütz, <a href="https://www.csh.ac.at/" target="_blank">Complexity Science Hub Vienna</a></li>
    <li>Matthias Rella, <a href="https://www.ikna.io/" target="_blank">Iknaio Cryptoasset Analytics GmbH</a></li>
    <li>Michael Fröwis, <a href="https://www.ikna.io/" target="_blank">Iknaio Cryptoasset Analytics GmbH</a></li>
    <li>Thomas Niedermayer, <a href="https://www.ikna.io/" target="_blank">Iknaio Cryptoasset Analytics GmbH</a></li>
    <li>Melitta Dragaschnig, <a href="https://www.ait.ac.at/" target="_blank">AIT - Austrian Insitute of Technology GmbH</a></li>
    <li>Michael Seidl, <a href="https://www.ait.ac.at/" target="_blank">AIT - Austrian Insitute of Technology GmbH</a></li>
  </ul>
</div>
