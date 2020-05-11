# Graphsense Website

This is based on [https://github.com/nicolas-van/bootstrap-4-github-pages](https://github.com/nicolas-van/bootstrap-4-github-pages).

A [Bootstrap 4](https://getbootstrap.com/) project for [Github Pages](https://pages.github.com/) and [Jekyll](https://jekyllrb.com/).

* A full Bootstrap 4 theme usable both on Github Pages and with a standalone Jekyll.
* Recompiles Bootstrap from SCSS files, which allows to customize Bootstrap's variables and use Bootstrap themes.
* Full support of Bootstrap's JavaScript plugins.
* Supports all features of Github Pages and Jekyll.

[See the website for demonstration and documentation](https://nicolas-van.github.io/bootstrap-4-github-pages/).

## Development

Having Docker installed run `make watch` and point your browser to `localhost:4000`.

## Statistics

Run `make REST_ENDPOINT=http://example.com stats` to fetch the latest Graphsense statistics and commit them.
