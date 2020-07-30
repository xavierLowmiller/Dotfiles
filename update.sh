brew_update() {
  brew update
  brew upgrade
  brew cleanup
}

gem_update() {
  gem update --system
  gem update
  gem cleanup
}

brew_update &
gem_update &
wait

gem pristine --all
