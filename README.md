# GraphSense Website

This repository contains the source code for [graphsense.org](https://graphsense.org), the official website for the GraphSense cryptoasset analytics platform.

The site is built with [Jekyll](https://jekyllrb.com/) and [Bootstrap 5](https://getbootstrap.com/), and is hosted on GitHub Pages.

## Local Development

Choose one of the following options:

### Option 1: Docker (recommended)

Requires [Docker](https://docs.docker.com/get-docker/).

Build the image:
```bash
make docker-build
```

Run the local server:
```bash
make docker-serve
```

The site will be available at http://localhost:4000

### Option 2: Native Ruby (macOS)

Requires Ruby 3.2+. We recommend using [chruby](https://github.com/postmodern/chruby) with [ruby-install](https://github.com/postmodern/ruby-install).

1. Install chruby and ruby-install:
   ```bash
   brew install chruby ruby-install
   ```

2. Add to your shell config (`~/.zshrc` or `~/.bashrc`):
   ```bash
   source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
   source /opt/homebrew/opt/chruby/share/chruby/auto.sh
   ```

3. Restart your terminal, then install Ruby:
   ```bash
   ruby-install ruby 3.2
   ```

4. Install dependencies and run:
   ```bash
   make install
   make serve
   ```

The site will be available at http://localhost:4000

### Other Commands

```bash
make build     # Build static site to _site/
make clean     # Remove generated files
```

## Deployment

The site is automatically deployed to GitHub Pages when changes are pushed to the `master` branch.

### How it works

1. Push commits to the `master` branch
2. GitHub Actions runs the workflow defined in `.github/workflows/deploy.yml`
3. The workflow builds the Jekyll site and deploys it to GitHub Pages
4. Changes appear on [graphsense.org](https://graphsense.org) within a few minutes

### GitHub Pages configuration

To enable deployment on a fork or new repository:

1. Go to repository **Settings** > **Pages**
2. Under **Build and deployment**, set **Source** to **GitHub Actions**
3. Push to `master` to trigger deployment

## Project Structure

```
├── _config.yml          # Jekyll configuration
├── _data/               # YAML data files (currencies, features)
├── _includes/           # Reusable HTML components
├── _layouts/            # Page templates
├── _sass/               # SCSS stylesheets
├── assets/              # Static assets (CSS, JS, fonts, images)
├── index.md             # Homepage
├── news.md              # News page
└── documentation.md     # Documentation page
```

## License

See [LICENSE.md](LICENSE.md) for details.
