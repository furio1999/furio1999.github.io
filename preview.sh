#!/usr/bin/env bash
# Local preview with the template switcher (Paper / Clean / Track) at http://localhost:4000
cd "$(dirname "$0")"
bundle exec jekyll serve --livereload --config _config.yml,_config.preview.yml,_config.dev.yml
