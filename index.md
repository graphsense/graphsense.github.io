---
layout: home
title: GraphSense - Open Source Cryptoasset Analytics
nav_title: Home
description: GraphSense is an open-source cryptoasset analytics platform for Bitcoin, Ethereum, and Tron. Full data sovereignty, algorithmic transparency, and scalability.
---

<div class="container mt-3">
  <p class="lead text-center">
    GraphSense is a cryptoasset analytics platform emphasizing full data sovereignty, algorithmic transparency, and scalability. GraphSense is open-source and free. It provides a dashboard for interactive investigations and, more importantly, complete data control for automatizing cryptoasset analytics workflows.
  </p>

  <div class="text-center mt-4 mb-3">
    <a href="https://app.iknaio.com" target="_blank" rel="noopener noreferrer" class="btn btn-primary btn-lg me-2 mb-2">Try Hosted Service &rarr;</a>
    <a href="/documentation#option-2-self-hosted" class="btn btn-outline-primary btn-lg mb-2">Self-Host Guide &rarr;</a>
  </div>
</div>

## Origin & Background

<div class="container">

  <p>GraphSense originated in 2015 as a publicly funded research project at the <a href="https://www.ait.ac.at" target="_blank">Austrian Institute of Technology (AIT)</a>, led by <a href="https://bernhardhaslhofer.info/" target="_blank">Bernhard Haslhofer</a> as Principal Investigator. Since then, development has been carried out in collaboration with the <a href="https://www.csh.ac.at" target="_blank">Complexity Science Hub</a> and has been supported by several public funding programs, including the Austrian FFG (<a href="https://iktderzukunft.at/en/projects/graph-sense.php" target="_blank">IKT der Zukunft</a>, <a href="https://www.kiras.at/" target="_blank">KIRAS</a>), and the EU Horizon 2020 program (<a href="https://www.titanium-project.eu/" target="_blank">TITANIUM</a>).</p>

  <p>In 2021, the core development team founded <a href="https://www.iknaio.com" target="_blank">Iknaio Cryptoasset Analytics GmbH</a> to provide GraphSense as a hosted service with near real-time data updates and to develop additional operational tools — such as <a href="https://www.iknaio.com/platform" target="_blank">Pathfinder</a>, <a href="https://www.iknaio.com/platform#caseconnect" target="_blank">CaseConnect</a>, and <a href="https://www.iknaio.com/platform#quicklock" target="_blank">QuickLock</a> — on top of the open-source platform.</p>

  <p>GraphSense itself remains fully open-source and <a href="https://github.com/graphsense" target="_blank">MIT-licensed</a>. Iknaio is the commercial service and development partner; the two are complementary, not competing.</p>

</div>

## Supported Assets

<div class="container">

  <p class="lead mb-5 text-center">The GraphSense system design supports UTXO- (e.g., Bitcoin) and account-model (e.g., Ethereum, Tron) ledgers. Currently, adapters are available for major cryptocurrencies like Bitcoin, Bitcoin Cash, Litecoin, Zcash, Ethereum and Tron. Additional ledgers can be integrated by implementing a <a href="/documentation#graphsense-lib--backend--analytics-engine">lightweight adapter component</a>.</p>

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

<div class="text-center mt-3 mb-5">
  <a href="/documentation" class="btn btn-outline-primary">Read the full documentation &rarr;</a>
</div>

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

  <p>Stütz, R., Stifter, N., Dragaschnig, M., Haslhofer, B., & Judmayer, A. (2026). <strong>Reuse of Public Keys Across UTXO and Account-Based Cryptocurrencies.</strong> arXiv preprint.
  <a href="https://arxiv.org/abs/2601.19500">(pdf)</a></p>

  <p>Avice, R., Haslhofer, B., Li, Z., & Zhou, J. (2026). <strong>Linking cryptoasset attribution tags to knowledge graph entities: An LLM-based approach.</strong> Financial Cryptography and Data Security (FC 2026).
  <a href="https://fc25.ifca.ai/preproceedings/74.pdf">(pdf)</a></p>

  <p>Saggese, P., Segalla, E., Sigmund, M., Raunig, B., Zangerl, F., & Haslhofer, B. (2024). <strong>Assessing the solvency of virtual asset service providers: Are current standards sufficient?</strong> Applied Economics.
  <a href="https://www.tandfonline.com/doi/abs/10.1080/00036846.2024.2396640">(pdf)</a></p>

  <p>Niedermayer, T., Saggese, P., & Haslhofer, B. (2024). <strong>Detecting financial bots on the Ethereum blockchain.</strong> Companion Proceedings of the ACM Web Conference 2024.
  <a href="https://doi.org/10.1145/3589335.3651959">(pdf)</a></p>

  <p>Haslhofer, B., Hanslbauer, C., Fröwis, M., & Goger, T. (2023). <strong>Increasing the efficiency of cryptoasset investigations by connecting the cases.</strong> APWG Symposium on Electronic Crime Research (eCrime 2023).
  <a href="https://docs.apwg.org/ecrimeresearch/2023/20240328851329400.pdf">(pdf)</a></p>

  <p>Stütz, R., Stockinger, J., Haslhofer, B., Moreno-Sanchez, P., & Maffei, M. (2022). <strong>Adoption and actual privacy of decentralized CoinJoin implementations in bitcoin.</strong> Proceedings of the 4th ACM Conference on Advances in Financial Technologies (AFT 2022).
  <a href="https://arxiv.org/abs/2109.10229">(pdf)</a></p>

  <p>Kappos, G., Yousaf, H., Stütz, R., Rollet, S., Haslhofer, B., & Meiklejohn, S. (2022). <strong>How to peel a million: Validating and expanding bitcoin clusters.</strong> 31st USENIX security symposium (USENIX security 22).
  <a href="https://www.usenix.org/conference/usenixsecurity22/presentation/kappos">(pdf)</a></p>

  <p>Romiti, M., Victor, F., Moreno-Sanchez, P., Nordholt, P., Haslhofer, B., & Maffei, M. (2021). <strong>Cross-layer deanonymization methods in the lightning protocol.</strong> Financial cryptography and data security (FC 2021).
  <a href="https://arxiv.org/abs/2007.00764">(pdf)</a></p>

  <p>Stütz, R., Gaži, P., Haslhofer, B., & Illum, J. (2020). <strong>Stake shift in major cryptocurrencies: An empirical study.</strong> Financial cryptography and data security (FC 2020).
  <a href="https://arxiv.org/abs/2001.04187">(pdf)</a></p>

  <p>Paquet-Clouston, M., Romiti, M., Haslhofer, B., & Charvat, T. (2019). <strong>Spams meet Cryptocurrencies: Sextortion in the Bitcoin Ecosystem.</strong> Advances in Financial Technologies (AFT 2019).
  <a href="https://arxiv.org/abs/1908.01051">(pdf)</a></p>

  <p>Romiti, M., Judmayer, A., Zamyatin, A., & Haslhofer, B. (2019). <strong>A Deep Dive into Bitcoin Mining Pools: An Empirical Analysis of Mining Shares.</strong> Workshop on the Economics of Information Security (WEIS 2019).
  <a href="https://arxiv.org/abs/1905.05999">(pdf)</a></p>

  <p>Paquet-Clouston, M., Haslhofer, B., & Dupont, B. (2019). <strong>Ransomware payments in the bitcoin ecosystem.</strong> Journal of Cybersecurity, 5(1).
  <a href="https://arxiv.org/abs/1804.04080">(pdf)</a></p>

  <p>Filtz, E., Polleres, A., Karl, R., & Haslhofer, B. (2017). <strong>Evolution of the Bitcoin Address Graph - An Exploratory Longitudinal Study.</strong> International Data Science Conference (DSC 2017).
  <a href="https://aic.ai.wu.ac.at/~polleres/publications/filtz-etal-2017IDSC.pdf">(pdf)</a></p>
  
</div>

## Core Team

<div class="container">

  <p>Bernhard Haslhofer, <a href="https://www.csh.ac.at/" target="_blank">Complexity Science Hub</a></p>

  <p>Rainer Stütz, <a href="https://www.csh.ac.at/" target="_blank">Complexity Science Hub</a></p>
  
  <p>Matthias Rella, <a href="https://www.iknaio.com/" target="_blank">Iknaio Cryptoasset Analytics GmbH</a></p>
  
  <p>Michael Fröwis, <a href="https://www.iknaio.com/" target="_blank">Iknaio Cryptoasset Analytics GmbH</a></p>
  
  <p>Thomas Niedermayer, <a href="https://www.iknaio.com/" target="_blank">Iknaio Cryptoasset Analytics GmbH</a></p>

</div>
