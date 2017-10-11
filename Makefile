SHELL := /bin/bash
PATH := $(PATH):~/.gem/ruby/2.3.0/bin

serve:
	@echo $$PATH
	bundle exec jekyll serve

setup_jekyll:
	gem install --user-install bundler
	gem install --user-install jekyll
	bundle install --path ~/.gem
