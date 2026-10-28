@echo off
REM Local preview with the template switcher (Paper / Clean / Track).
REM Opens http://localhost:4000 - stop with Ctrl+C.
cd /d "%~dp0"
start "" http://localhost:4000
bundle exec jekyll serve --livereload --config _config.yml,_config.preview.yml,_config.dev.yml
pause
